Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EC6CA6F
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788321034; cv=none; b=ZxuPQH+x1QRYXNngtMgBleGjqcLLWaAtG899oyvac354oLdTS0C9BHuFMN87CGoeJZ0tnM5AynC4I5Th6Mtr5XxYx8rP+zzIEEY7v1JjL+vtx/qVXg7guNDPax7lW49tXQURIUNWNC1AoG3tZpyY6cMg4ueBJYbcHE5iiCpX3uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788321034; c=relaxed/simple;
	bh=k1YueSPwjMW9qdVgnQZKwSRzdPnhzCMNG5xhmQGd2Ss=;
	h=To:Subject:From:Message-Id:Date; b=ayJKxcWYsGyxV13rsu8/goVKcMRuHp5ToXJmYHS18sKgIklmJF4fZnvB2zbmf3aW0IxKiKgJE6MnJvJKGr3OHlAlF2TZyLT8gyJ53MGrbIFW509cBB+MsyV/HKDdL6K/NVAV59MhViUwol+jciNQPWD2mQViVq01q9YutSrkPoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNHVg33x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNHVg33x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E89CEC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788321033;
	bh=k1YueSPwjMW9qdVgnQZKwSRzdPnhzCMNG5xhmQGd2Ss=;
	h=To:Subject:From:Date:From;
	b=WNHVg33xAjR1EO2xRmpm1aKTOuECZRbO2myaRquIgUcXpVrIhYo0ca2GJYNfU8m+6
	 6FN4yPHCW9+zTcxR3KafzrMPG606s4lsgtpd3S/oMc5QzMZ22CgX8MJPw7jihtM3JV
	 1/maC3P/LhzClIkvVrMhLNIuKcqSHg4mgfmDrxqDKorso7CQdCr86ieY9608/7JIjD
	 HxNfTFvfTS41BxZbcIHcLpWQ1s2ann5HREP7gYN+avQkN6TvpkVEyUtvG9XAC2hwpj
	 md1TmGcVozHzCQJmtIIehrAkmAToUz81ToAZsz7h6dxSpMQjTOhw+fhThut76MR20i
	 PKLKa8s/9u2ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF7DC61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178832103368.13221.6060439804873153909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fae128b468291d9e27f82117ea3da1f39ac1e7d3858ff0bfd48666e7c93558d
Date: Wed, 02 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788321033
