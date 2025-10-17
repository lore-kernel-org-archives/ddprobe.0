Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A248231A23
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760671194; cv=none; b=j2PxmFFMRPBmQlwpIyuAxrFtJvKQAFD7dA0wZjWzMonLnV2FtmMyJr62Ah1Qfc4SAMpBZv0TqjbejXr+/unpzQMMiVdyZ+yv57Go3CFqtJNhdcvamlbibU0PTaiIZr1/O66IwzGWV06WzPQTfZfLS6LELWOot2vxAtWVPcCKDXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760671194; c=relaxed/simple;
	bh=4sVmszwpduddi6PAedZsCqTra7+jCIearPZZr7lVZNM=;
	h=To:Subject:From:Message-Id:Date; b=FWwcTjiu2sahvGy/YOShbP1IKhZlxhP3kDa7CBaTt8XWj6QbLohjvuF1ItiirsVDniNsGnSgMvt6gmNYwmuw2Jz/6v1Zisqr4JILVgpSJ8PfHt+NpzgHjXpBqFE442sCxzLZuOBuTh2iAX8NQshi4uT2sRDPgMrhfAit/ORxSRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgVbCAc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgVbCAc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A589CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760671193;
	bh=4sVmszwpduddi6PAedZsCqTra7+jCIearPZZr7lVZNM=;
	h=To:Subject:From:Date:From;
	b=jgVbCAc3jXk2/IeqZoaHSFjPugLQg+YEMQgQ0r75e8k+1nJUc1MdKLi+8XoWyV7zH
	 KdU9zWVpUF2fqKf2PtdLm0zxwRB0On1NSiAxCRNS6da+BsvSoLlBj1gqQE5nKxh0f+
	 Icb0TzScoYpIXiiHf903uWIJqm927sILf7p9BIs5SOk7V5mrHAK8IcckHrEQa4OEHC
	 tR00tdXJWgiCeX5oJkxSyejMIt7ob0XYZV7zzNh1AZ1hPZTS63aZvSCP9U/IG6KsEb
	 PiLOmBjrvLhsXw7cTkiNNbByRPGevjy2KZsbnQ+qMs2uFs/DqyG2H+F61PEv7OA0NA
	 qgRiNIgwxfpoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E93CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176067119358.27055.9719255390405960803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c9ba329ff0cdaead4a678a98b6064e0e1e413cd9d2641215e2d6d4fa7fb92d
Date: Fri, 17 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760671193
