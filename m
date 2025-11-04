Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A52525A33F
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762224594; cv=none; b=VQQINSQbe+CrveiIpT0mkZlUTnOsIYwXP866BYniV/LPMTUsoj/SqHwixZFEtC75ZtB72phkpeKZLhx0K/INaOfunE7uhJ/0K0bKAfil51Z4T+rY9xPVuZor29eP2Cue4z3NfoYY3XrPCalL35FxGy9Oh2EY0Cf/XIQrKnCzJxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762224594; c=relaxed/simple;
	bh=xHd/FcQcgLhe9Rlg3gLhaIcmwE75lgCeLZPYQyB0qfE=;
	h=To:Subject:From:Message-Id:Date; b=DUqYrrCvOjhLiylgrO6YVcNSBiGmd5gZkNYbRFQ9VPWCrLyg0B9AObxVjGm51eTdc/10YNu0eZafZaaHQvC8ZnXoNznc9RDZ0iwMptyo4wxvYEaPeTf0nLH/EeSZe/UBrEDZtGKmdEcswbku5GQrtaEYWQqP5blmoE26r1lMBv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A92hUd9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A92hUd9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B14C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762224593;
	bh=xHd/FcQcgLhe9Rlg3gLhaIcmwE75lgCeLZPYQyB0qfE=;
	h=To:Subject:From:Date:From;
	b=A92hUd9cMNY0iRHSUzgjzmtLip7XK42PGtv50//WdQ/0vQ3MdmbJTtbs4GyLr2S6l
	 +Fi/k9B+/DATyc+y/uKWLQfDZ20dsybbkviP/qFXFSQ51tX96oHX+u6fjgOngsUqXQ
	 ZR+ghh3C593Fq5RLEvZEcDjanzMxpiJROREdh6YmJC7GwfZ3fLG3J/xBwAuAsHcJdj
	 LQ8wjNZY6oJ9DSIcMUZ31k2kLkK4tdRXHMtRYZyPhfZCSj5JpLA55pzoMtCxWSb96H
	 sfu9fecMr9e62HSQadE2CkJ4R0nqtBtV6LRCw0VULtkc5O6fMpOpA3/lgEfXet0C4m
	 LMbftpJEr8Vow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91437CCFA03
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222459358.3034.17369982845664853832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4624a772327a2ce69ef602be07ed4f0ba26a15834fde8a01b040e35c866ac7e
Date: Tue, 04 Nov 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762224593
