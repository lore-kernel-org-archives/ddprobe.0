Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A341C07C4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746617993; cv=none; b=FfWJuzJqdHm8N7rc+JB44Mcpcl3098FXNJgavjmxrdXObMP+hzpv+9rnU1fHlygcBImvZhD/zEDBp1shJxgh8nnsN4q6WnfagLlyTRAjNeskFFL4n//WpYF4qPHuUvdRgng+QpRdGoS9PEev/q3xEUd3A2qD9RZRRKrJYRfOiec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746617993; c=relaxed/simple;
	bh=d6+SmE3v/HmeGRurbQDeYTZvFt+OkY388BUnW1uHB8g=;
	h=To:Subject:From:Message-Id:Date; b=b3PbGQbZcGwYIL3dzkgU2+y/7HWH71ZPR2IBVCswxP8IfwBpwgJoRIxbOv8Lt+KF38Ba+DhC7G9pjh0H9aa42mEkY5118rkqY0p7RpeZsrx7tjxUQawhaJL4V1LWI3PlLDYRJR0JrcYShF53n9u6jIu9k9VZ2U5iOJuiaUxT34k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8QixQQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8QixQQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5F4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746617993;
	bh=d6+SmE3v/HmeGRurbQDeYTZvFt+OkY388BUnW1uHB8g=;
	h=To:Subject:From:Date:From;
	b=p8QixQQ0ot9fb7rpfbShtbgi/ZDeFdtezJ+urzOHV2HvetPCQ+1OLOmyqYIwzowM6
	 UD/VKFCGMvCyjPq65xL+kpc3Dqn7Hhd2Kr5906iegeJYlRYn9dF3Wb3NDCvyOCVAU1
	 loybjdiET7CKP/UFPmDOv59UUYlUkQSYNNwCV++40Lik4s8eNa/+l4iamX3x3jg1IL
	 mU0qZFWvfCAiltdyKM9HoxyRkvPRZx4L/EW//BAn1EQEL4zPlaVNvEb6jxc+aY6hUK
	 Xfr531lJnCAU04nlpEx0CtNZKCAbI+gzLBpWTNyn+LQY83o4b0IRjHyFnY0k8MoOs5
	 c3OcGtDyt9utQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E164C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174661799357.27921.5226797258270974044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 666a3581a003f092b1c160f4e8bf34bd676ae02a25e361102d1a5c271b6ffda2
Date: Wed, 07 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746617993
