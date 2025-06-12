Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3D82F4328
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749746394; cv=none; b=p7FhBy5OAfc2NO/2kqd6lEOWq6YPuT17nRVm2oZ30s6CpobSkl3d3sYfT749E9CZNINgGFDOTB0NX0sItsUfyxLRmxqDXNCI7WdsqCKoN/O0g567NtRAQqSsjKh7YAm20y7HUMlb7d/FJY1fNUFF/U9rHspI4mvrWtrZHcCpD+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749746394; c=relaxed/simple;
	bh=Y6CiTNs2YAwqy1G0iXjA+k8y9XsSF75XUqTDPElf1ko=;
	h=To:Subject:From:Message-Id:Date; b=QeGYwLJEFTOwz7+VqEyWvAzcfB0MI3s8S0I55crITGvu91MuWY68CtCJEqxjGBWen5djZEEiobm+FIC9LwkdeMIrJ1IYwwFPC8ckQna7mnR1B5ynFFZpEzPT0BfZ8ZyQqyOkxMJy2ZPmftZBwbwFSKCUcrEi7HvlbZerWZ70jl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJERFV/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJERFV/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A408DC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749746393;
	bh=Y6CiTNs2YAwqy1G0iXjA+k8y9XsSF75XUqTDPElf1ko=;
	h=To:Subject:From:Date:From;
	b=YJERFV/VtqtkPMjIKfJhaol6wkUJ4Pk383LJ24MdSEVwJdm0OtQoOLoRwEMR43BqB
	 fCLCUYMztWlpYNQGpeZGI/YpTel4VkpmUHOZkunRJRCQTAaPNwGiiSvVn4ZsaxvM79
	 c5YvfR88k0XzTrvNNn5QdLadJL6EWKI/KcgVb2dYIcH4y61KEWSEtbNvkaemL6Tvus
	 TbKpv2uS6jP29PzZNV3vZZ5g8IAFVRn22PdtpAQqypb5G/aZKd69WhRh/mIEsDwgI+
	 pWBQU2M8Dnoi2eJZgHLXxtddpHuVp13CIycYg5XMJHRm2R91F/m4KdCNyzMk77IGb4
	 0MKR6o+U1A23g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91764C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974639358.16343.3790147627876314934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c4622d929254b400c3f7f159c7190507845e199293e810fbb072026a72d507
Date: Thu, 12 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749746393
