Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFF6C7ED
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705711097; cv=none; b=jJCDXOtmAmazXEO8OYJz8HxojHWqjJfuclvd8N6NKoSNPcmgCE+KzMv50QKR4VK19r7fXfibt8MrykBnrQ4um/aH6Lx5aw4hD68h0dipqSob5S0g8sdOxckSRUC3nvuaFlhWniBOvZ2doXdYg61QPB+TduWWqxTLc7hEZIbrbb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705711097; c=relaxed/simple;
	bh=u2HI+atY2H7rE76KOH+sSUeCBXnREfOiNRMrRg8cUiM=;
	h=To:Subject:From:Message-Id:Date; b=mPUUo13TFthB8qZrOAVYnc80fBYJzl+8JOpnPQYcOdfKHHM9lkjS+JYY3eDqPsv7JHv+ZI8cHTzKGcsxkTNqcSHE+N1rzlMeCyzLYzQ0x2t7tkRSv2LP1FQbt2ug8EsB3tE+2/wpLgGqKEPQy2cylWGMzdqOGaaBWRNQuWtCkEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcWpG+x5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcWpG+x5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7671DC433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705711096;
	bh=u2HI+atY2H7rE76KOH+sSUeCBXnREfOiNRMrRg8cUiM=;
	h=To:Subject:From:Date:From;
	b=UcWpG+x5d3dcqbHEHaVK/PvubKzmQ95+O6krL5i3o+3zZBAlLmqVPABMaHLTBLxLP
	 BB9amwRkOMMyWyVbFv3qNh0wjm2oYY7H2QJCKVRzSOak82tsPNORexgM9jw3AsF9D3
	 Uj3KCpnytyGWkR49YH+ow7fVQ6qcwFi1/yuSWy0ltPkGtzFHrzloIT1r5UhhyTloiT
	 eboBB4j+G+k9djTLNKI957VL/xTCyW8ay8Eimza+BD+XeDm46PZ7NoeSSDx8Z/oaMz
	 bfJoW4hUQHtLvus3vzFHdMz1iWY7VawpeQrICxjf6utNlFENJlAPd+dfrxjU8m9a1r
	 6jEY4Bn83RV+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F4EDC47DAF
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170571109638.2761.3128189384709678665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2550c3d2730b9b6af7609698aacce57618b9d04cefb92195c67e7f1dc7566b3f
Date: Sat, 20 Jan 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705711096
