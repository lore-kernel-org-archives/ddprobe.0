Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246E23090DE
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779392554; cv=none; b=Cc3tHAnajNKx8nUlZXzlvsqlPw00O5IhjDnlSDOtzIstb9e6mMl8lj5U1JQbXxNn5HnwRo75H1fm2QOgxeCk9mR3WJcHO2bUEHU3Cik2V40MpGXzA4nWdRij3AYmFViPj25PmXmOK57/QV3L1aoO0JJKBxvEYjQ2fmlMYeb5gXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779392554; c=relaxed/simple;
	bh=gVBgN/9d9bS0FawOGYwnUP4f9tA2zAHOkaqKihA7uBk=;
	h=To:Subject:From:Message-Id:Date; b=u7vBln0GdobUvyAh/aS/sCYH390wvySAB4zCldz6z+G3a+J3cUhs1T4JQnmjqAzF50DEr4XsedMb5sWsb5JSIAKZDNrCftVvuKJT5W539QIXOhlMXjR3/4rsKKI6zn5h26iuaNUT33pIA6MnLrK/J1cRprpnMxxB/EbKM/IsPVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRjTc16u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRjTc16u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8061C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779392553;
	bh=gVBgN/9d9bS0FawOGYwnUP4f9tA2zAHOkaqKihA7uBk=;
	h=To:Subject:From:Date:From;
	b=aRjTc16uBZJWVW5/sU3WYnXv8l4wFxSTaj6oLcn6MUSbxxh6dQSUfFSCzacZtWLQJ
	 IyHG/M3cWTd01TZHKSUNV3PppQXsiMIbdOrzUqDJBzgpC7nTKE+qSimH5SAIGIFToX
	 FuRWaoat254Gaf7ojXin64QRnrGR9wv7bUeucP/UT5vkFbSIYp9DGLX+wEbVcNtGsw
	 5HEM9JuIoFNbL5xiyfyMzw+p1E2jTLp4AmJDlGIpeGx+bhf4vIFeCsqC0Nf3kfnyM6
	 hwfinOFnTslAj6hk1AW7wIHyAXwWlWHxynw2YnZH/kpce+s+MEsdl2UFYiXqDFzYgK
	 hmByRI79PCDIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD859CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 19:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939255368.1082.2126739655800483438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f60b09628be1d31feb2a76d9f1fff3737c8dd92a9f579f6d75fdd287bfbaa7a0
Date: Thu, 21 May 2026 19:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779392553
