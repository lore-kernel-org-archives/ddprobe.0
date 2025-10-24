Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D33221555
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761328194; cv=none; b=ZZzzRh2P304DhUvZzkAtkGbafK0ishRo+eqMcr1z80f7JreZtuc0A17olvJw9tB7ZEtZpRhl70eIy8kGHnUh9lLQA42BcIfws0t6oC3EkysDlvWFF1y/4lhm4r7GnqCbwqK/vtLTgMrAEeCvbqfjPDGmJmt/dCbuxey5s1yfif0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761328194; c=relaxed/simple;
	bh=PEoG0RC6mq6ebxQfWIe+gDHMbZIyAylWF2c5rPDbp7Y=;
	h=To:Subject:From:Message-Id:Date; b=ep9cEMoe560y0x4Qs0i1FuC6gxRP0sXZcGC7Klk1BFi++o/7aw5BIOK+f1DuHiUsk6bbtTIBAMCfJFgAKTULHL78oeSO7mvCHZviHQA++yxjTi7PX6SyNW1xRqYbK8KSrSitstkakHVt6oZZH9MCmvxY3poWZZ+HYFHmhC+59oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvLWv4ci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvLWv4ci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ECEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761328193;
	bh=PEoG0RC6mq6ebxQfWIe+gDHMbZIyAylWF2c5rPDbp7Y=;
	h=To:Subject:From:Date:From;
	b=bvLWv4ciy3wLkZHDIp8dg1jq4ttYyPUeadtPvu/oqZRC+LIrBP/+kLiKhwvVvIo+O
	 k3/XvC6a/+ztsKJtqz1hnXjXp0GcoDaSs06rNv0a7hV3FTJkIl92No2wwfHrLySOZc
	 OwQq6ethsA/cxjsWBCXLAW2KD3ATuOlvonWv4+BisMBxkdWKyFnG25r0w+nSdO08YJ
	 v7rQuG+As7Mq1AdmTKbQRuSrOR5zje4+cl/kkm4lSaP4X3e/QnvpTsvCnO54IYHG4J
	 GEhcM2UlY09FKD7rHeICYW5pF4NF9lUqnzGXerIcfPsneiBdi2BTQIsA/mov6CnZLV
	 SaU/jqMNUPaeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905ECCCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132819358.8863.8225339954203490554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0700a1d57d2564c8d348d53d1b15839c4974f62c7d64b3ccbb1821cb7df53c14
Date: Fri, 24 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761328193
