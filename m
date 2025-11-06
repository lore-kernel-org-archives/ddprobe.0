Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200F62D541B
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762406994; cv=none; b=hq78KI2GV/dP8JlZtl+F5XhDslcD5EwuB402dn2SJ0N7DvS6NFRvvpHaDE1tG5hzsjFu3F2VRIhuNE6Dd4s3n8dHMCF+Rx+69hlySKlVNmjnX8SY9E8U0m6QqRCS7+IYgA59zWx1UqdkZKoQfZuHs331mRj0TQKiC0ljh0GlQA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762406994; c=relaxed/simple;
	bh=NInYev1+HC/AiAD1L1VOfG0t+eZDQiw0+4ryLENPlNs=;
	h=To:Subject:From:Message-Id:Date; b=RFubkLkIAX331rnrs7PHdGwkEyGXALtVK70VOFrnFYq+7BELRyiaKPxORY513aoNRd+DY1bVhC1SPUnLYv/pis34LjQ3YkFdovIVNJ7mFQImv3roc1Pp5vf1okcY6tH9jizNjNsTSU2iLfvJlC1QkHE+0LWWoun5TeGngGMeY6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sR7RrBua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sR7RrBua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A34C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762406993;
	bh=NInYev1+HC/AiAD1L1VOfG0t+eZDQiw0+4ryLENPlNs=;
	h=To:Subject:From:Date:From;
	b=sR7RrBuaOcOqxSpMXJV1vgBaMEAebVLbJLxUOhXF784j2zC1PxMpsd3R0k2vE09WY
	 wcdEOUQgPgTCXC0C5sHqtzchZ8pWF70Q5kGxT2xOh7FnJx1kfHzSTwXsciWHVJz5HB
	 VaO9xC/ts+/j3GsQpkDGs+u61uO0Y4/pfrhQ1M+PVANQAoTdS+aj459RdIF5pJzbS1
	 CcbyELgj9fxlgVPhOMWc766wGWOWl+GM+LdxiKHIb5ZKWBceKw1PfK3dCWWpCjiANA
	 J3PdKrVXrtJxjvaPw+mXPWjNzV2W4efN2a8Y0MLRCu7HL6Z7CVaXIUEpjoucUamXZW
	 qaMBJi5Otb0wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9748ACCF9F8
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240699358.21357.467458800244625780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405dbca839eff27d798b8bcb3ca3a62fe91171726960e2771a5aea10e304b4e0
Date: Thu, 06 Nov 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762406993
