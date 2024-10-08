Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FFF18CC13
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728386754; cv=none; b=ENkLB4IankxBhOMfnvRB0wjCrDsysVLcijFTwpb6fkT6zF+5nqwcri136fK9865/xnMpa8yWGJkTZLac0u3vcKfU2JYoArfRrrVabs7Q598jg5aowyGr9rtfQ8SQ2KRe+6YI4wF4/DuLUyzWNzcDbOuqjc0Q9MUIWoT5oytEP6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728386754; c=relaxed/simple;
	bh=Oquq++8gXEwkGytXUUSupH5KcHqGE0sTCcLtnQNw+bE=;
	h=To:Subject:From:Message-Id:Date; b=BkwrqFUeBfHHBUVaeAbert6xbOevPdANn91n7d3WloJEpUg3C1V79jk1ISnFOCm45X8l1HVNEfJTPuosJc+BP+s49B8KH8xvjNhRQUltt31L0FDxcAIxLQ6CCzpCSTDIgf9B/zaINZDv3Ja5Z8dAPgJcJDYT/92VbCyISLnESls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3qQU47z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3qQU47z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DABC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728386753;
	bh=Oquq++8gXEwkGytXUUSupH5KcHqGE0sTCcLtnQNw+bE=;
	h=To:Subject:From:Date:From;
	b=p3qQU47zwKjQEQHl7byCC7ihJyRHK1hP1jGlYBTTuPZ+IChnQaY23KEIcph6CR603
	 nDhBnRUPMyHBJRbXGTWFEUgw6LIaifQ4pOAMYlZ3bdypu2w8pwgRvMpijWAnrQarkQ
	 DBO/lepjzeBM70IYaw2/R1d99F12kO2L/fDeuiyr4ZIWmDQxCSM0qx5w1VFZULbIDl
	 ZGd3reY/S8e5jPuO2eMCfxJBSgD5qXHmZ8kJrZhYc7gA2O/FH8EGsMYalo1f1CmFUA
	 sUjOMgzn3uUPiVF7jiN+mAyQVVss763uurbY/6Am137o6vJX4FXCWmRf2zxSFVNnTu
	 iI/0bVGVE4MXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B472ECEF156
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172838675372.27794.7496257860121921809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201f73311ed3531ac9c844fa7c874a10d8f2ebdcde193abbb996abffbcb64d66
Date: Tue, 08 Oct 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728386753
