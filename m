Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C953358381
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792264834; cv=none; b=XZO+9e9FymoSSOObn5ycIFkK/UPZe9aUPyvFCCE1au1VZff6xbWwlr5ZI6uRZo99Maglkh2Z+gde/z6e77vArzKg04CF57QTuU3REMqSVwEFekVnkDCQm3/k5SZAk8yjutA9McZV2C85dpkXgpqpocSzuxZOKuxduiw/ScY1XyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792264834; c=relaxed/simple;
	bh=Uf8w7e9GQPFPMd9yrMl9TB/ulIBtIQyF/c76GFw1e0o=;
	h=To:Subject:From:Message-Id:Date; b=BV7Fz4bHnNFqMWJiOp6gDATUqGc+HV4ew4bvxo7httQvaxolyBc8lGBMlQg6gQc3M/wOv/0MR7k1mVeYvNpkGmOOoAST1duVB0AM0y69vRF9HKGluaTte1ytcuvTi9EnUp0NOAPHlXif59YE9uf4LCipEAwyJr3SFjIkPp3aScg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odRT2o2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odRT2o2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFABEC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792264833;
	bh=Uf8w7e9GQPFPMd9yrMl9TB/ulIBtIQyF/c76GFw1e0o=;
	h=To:Subject:From:Date:From;
	b=odRT2o2+acOuyGlt9btQ8l3PYMh2a8aZipzo7PRhEzB6TqpRTpegHW4UsSVX3tX9K
	 R0LTl5sW+Ib5RoZ0pAkFsT4UNXfvHx03AKfBbqtQhXRbL3JidUzAGJa4oanKTqzYU3
	 zuuqZM4L/WIOVzo8KKNItcNZFu70jOYAALk4tNlRrE8k+eZ31w+VrDxaZCG+lRNbJt
	 5rrgv/3R/J7VJ1hyWuKnxsPKm/YSeI4oUw9wlSLJHeq/N3y+LshshT+ONe7nD2j+WL
	 9fiXf2JOcrPamEpl13XeNzn1f8zm1NhKT3MdVrg5Hf5Q+dab0gwhCG/Sb/MYquooDO
	 IlzTOziH5yCkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6B5CCF2C9
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226483370.27459.17192807086439765819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a097c2933f6d3ad68e009cc0fe778ee974c4b8ee5d906b4da199c191525f4fac
Date: Sat, 17 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792264833
