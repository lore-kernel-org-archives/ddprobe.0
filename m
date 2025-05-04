Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589338479
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746352794; cv=none; b=Wewws6HJ7I7m7YV+XRS0M5QxHHAqvplWImLXlFBMlfBNPOoU2id+b+55yK5/YpfjEU+EjvI7LY17zaj1tab2i5xy7kk4cUbkWXLjQNKm026lvrQZzKKw+8Q5MrS8XWDF8FgyGC3KGaNteIyHOiFO0kVzRntTNA+GeH0AxPhr/+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746352794; c=relaxed/simple;
	bh=UIy05whk4zTDQxpf9p+xsawGoIVszocb3mnHs/FfloU=;
	h=To:Subject:From:Message-Id:Date; b=tEdesAo0EGIE0K6qe/DHEwHd2lbu4Y944o+QMKUWTJO32sATiFcmnnp1o7TdOHgCBSA+8wIEunKdOWWb7CGCBnYeKIERrPcpOKCFBjV8i+ZJtkhZ0yqO+FoIaJXtYxPa1q2mm7d+aVxlRvBzfDHmXcVUmYxjfSDn197TVK6ZMB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDw+3X18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDw+3X18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4559C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746352793;
	bh=UIy05whk4zTDQxpf9p+xsawGoIVszocb3mnHs/FfloU=;
	h=To:Subject:From:Date:From;
	b=CDw+3X18rZMZFxFAZw8UUNqGB8CzOisY/LRsxGm6ytWyHUv2aiCuVSrKgOCh1ZoBi
	 4MI43XiRYb8s5IKL1ZujA+OaUEokqfcWWHJ5heTDa/ItZi1raPIVZ3+NpAybTqPJFs
	 b9U2C/2/YVzPgjUX+RxaJQyr6djlhvbmMaB3vIOw0ffagv2VUWCxUdvU1FygYsQ3Ms
	 DBHAabMNrGIti3IhTkvLxSAyYC7sjHVAo0nERnmo3ZDg3v1GPxwWsuIGmH5RTSpv+8
	 CvN0NFrKZayf4PIQEXL18cKUBaho7kuLqBElsxi+2bTCGffvEG86wsxMU1MmJph7ie
	 Rwsu3Sae4ntbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF5FC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174635279362.20681.16192146277120363611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4ef68a992aa1e481719909fc6305ce4137c1ea13319b9b40cad2862399fb0d
Date: Sun, 04 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746352793
