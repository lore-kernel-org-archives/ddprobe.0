Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5D53E9C09
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779102634; cv=none; b=OC/K9dEWFZen7tx5Ujpiiy8GRtpKSPt1PURz1vrmd5t+s3RfyTGNhcEtJc/Kf/+FtVa9HL81q7+tJeYcxc1hvQzMNt9eH4p5r8uXlyb89R9I7ydKYQhPgT1li6JYLH8YPxIGtIum5NnMtY+zIpmI13gTAUUcc36chx2E48CZQTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779102634; c=relaxed/simple;
	bh=h7TSga5uNhhMomrAoZ1iV/CsP+PyieRehZZdsj5APGQ=;
	h=To:Subject:From:Message-Id:Date; b=oLjQEDhFrQLj6KeOS1hv2rcvNlQFg4LJQZtW+8QBmbni0eLORry/aASc0XeStB0OK0RV/paTacOmiEpQ/oGfGKtuiIrAvGSqs7WHs8NPlAMciSHzPGXaSEGHmDkEI5LNaOYGPAASHAag5k5r4wle6JjdYg/ZJurT2QF14Oz/J7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhMJbNp4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhMJbNp4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF1DEC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779102633;
	bh=h7TSga5uNhhMomrAoZ1iV/CsP+PyieRehZZdsj5APGQ=;
	h=To:Subject:From:Date:From;
	b=fhMJbNp4VAquTByro+fBKLtuUmeQaYhu7MIetH72I/G88LLB9Gvuvhb6Y1PISHi/W
	 0vIbpE+gJowN42nxzsREElPsI57LE8+HlIobEWgKpoh65XXMk8HlW+15dSoYBuomW3
	 CvDyZjUobDXgKSXZSf5hZe+7FNZt4BfcpTfDBjqlCJQhV8xkweUYLm7jWK2zhJwV55
	 zdVsYh47IPE05rb+uvqF1cHLwx0haROT01tpSxB9Le7utWzcfeHA62wyskaBTdboA1
	 FnCzFzUwjsb/aI/ymY6edTrodOBp7GiDB1McCSOkFwtAShw8DlCtmP99Rc4/xHBLmy
	 9B2HEEm8bOAqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE310CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910263369.10110.14360071967282015603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41edee06bb297d2df1254edebdfea25c3908ecf0850ca84ee44df58ae27c0a6
Date: Mon, 18 May 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779102633
