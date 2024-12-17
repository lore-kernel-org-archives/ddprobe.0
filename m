Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104941E0B7D
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734432954; cv=none; b=IV+oshD2PhkNsmtGj7Ci3Xm70NlTBhFCOt7VvIK0WFDCde4zsYk/C0LdJbY5nVO1wYeMgAdeDDYAdhMRjhpxA7Ji+MgEvEC4U7TrR4XwhQJ7kRASc0oRfx+9SDYScgPD9ATAkTIKu28pMz+AZ+rqOtm3j8fsHKlsM1Hnr4QXHV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734432954; c=relaxed/simple;
	bh=HSWRxTF/8XOklYggCuKs3nRNtfUg8v31Dq3P5sFlr7g=;
	h=To:Subject:From:Message-Id:Date; b=cTIxYZ0qcI9Fx5YsapQCMHzzRvRze5dJI67EtF+4QnbAcDvKGdjO9gROFlIvLSIH2l8bi0IAJgR6FC+zNdPZ27yWQi0O4o4Ra9zW7ed66WPyXaU7TZcnaW+CsSoF6aCIEFrMZY4t6sYWEf/rwEJd+/B7rDD3duau2i0SBy9rY20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCq3tJ/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCq3tJ/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DB1C4CED4
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734432953;
	bh=HSWRxTF/8XOklYggCuKs3nRNtfUg8v31Dq3P5sFlr7g=;
	h=To:Subject:From:Date:From;
	b=BCq3tJ/LUCig693d8QJJdLkoGto+YcD0P9PDqocPjq9BgSK7wWMiMLpJjthCuCPw+
	 t1KkacKTXNVOUYsuUrWOC4byXaClcgmpyAdghz9M/UwHTjdkM7KsyUUyTnnr73wtRi
	 L7+xRLUfx1r078o4ksJVEQeb8ZSop7Zzol8RLl0m1q7pMK3jDP0JwiF5RS7vgKjaT7
	 TXsMOAxf5+DDaO1LLVSq86m1lwT6V8/HcoO+uwlkXDraZmPWYn2GXU6oNGaW6b3qS1
	 buS7EpGWqkYxjuMoh4j9zcStGOVZ/LM9IK23oyDyiweHCsl/LaYQyuuit6S4Ssjyhu
	 tYFKudGUzKz0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AB4E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173443295361.7475.3344683670890058927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82f21d046e59ad3080e8c1c811fcde996f1ea5694f91eff86e5f84b5c59442f3
Date: Tue, 17 Dec 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734432953
