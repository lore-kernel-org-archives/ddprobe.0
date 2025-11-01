Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5F22F549B
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762007394; cv=none; b=Gws/s017VS8PTOeYM8Rlr00UKNRr+65ERuEUox8Z/o0YaFJt8MbL8orzs4trdOeznJikDgexNKahs+IAISJUizSfHO/OwwyVAwm5Y0hP/CeYlU+gW8e+OvZmOJHjreV/T/NjBFiaRXEcrYvxKDuvHWakAHtbvcHdBV3q2QH9wQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762007394; c=relaxed/simple;
	bh=HfA0QnjDmubdS3z7xNtKh3JbPt5nkL4ND5DsBQ8iLeM=;
	h=To:Subject:From:Message-Id:Date; b=ADnzEE0fDHdee1FYe6czimYLGrl1b24I39Rwu9j7wCiUFsjX3akqOEpoQNOgoKIWSBlWMpdreEmCo1Bisrx9SC2Pc8eGjQiId1eDFr/32k16RVjCGkVuo0u7a3vDlpjYTfqEs866o6MDtjS76HE5s4Wd7FiKAKMt7jiqyzJADXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mw36tR5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mw36tR5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EFBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762007393;
	bh=HfA0QnjDmubdS3z7xNtKh3JbPt5nkL4ND5DsBQ8iLeM=;
	h=To:Subject:From:Date:From;
	b=mw36tR5ibuLruLxNIYx4dLEBv3TqJD2cKL7p/XslSRt3LrTZfbNd7RAvBk89i+avH
	 K0BB8gwIxh4B1ckB1NeFBx6eW3yUnIR2udPoyNa0qSIunavRph9kez7Cq3u2YYX3Vi
	 2hY+5L5L4NTjGzomolZc8rpy098BjUAGaAdkqpT4BhqdoCPcb1tyLV3xuoCkwSdIwb
	 770mq4Fbo2qDc09NVoX0yq3OpnzD9vAv1FTASBxxf/fCqzCaDBnCYZUS0HDaKv8MPI
	 AhwbCSMzhaz6Dj8NOkUPi2JIRxnHovFbNA/R4ULT3if/t+Srcf/gZB77WkpY1D/9iw
	 zWYjmKM9Nmvlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9967BCCFA03
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176200739359.1197.9370045320935449395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f7926912fc53736e0c8ea0084fd2b19dff16300375d39df6bd69b60452c98e
Date: Sat, 01 Nov 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762007393
