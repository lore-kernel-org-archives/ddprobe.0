Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D7085931
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737440154; cv=none; b=Db8i2Olmu5mh1tud7vac4MECpZLI3bKFT2hL/lRKmtrbggNI3fATlnedEBEMufLOlaeD5PQXhe7kNTlOD+5aNZeObHBSofwjz9sGpYRiIxSNwBHVEZyJjH2kBEzLroXO8nIWaN6osd+JtxCv5v/pnG1QVzcnZDclsufeKJjeiWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737440154; c=relaxed/simple;
	bh=wWMbuoCGfJ7irsatYP3rYKTPA07qWqMZKBQ9AzBSUNg=;
	h=To:Subject:From:Message-Id:Date; b=uYLC7DmSOPoN1eOanjF73bpnTF6xjLp9YRMIM+8C5YWJXb1ikOMqmtuBgu3yTAjA+vkBDiBiej5RjxFCexas5g9+F2RY96XPeeoW0o2SNFeN8seh9MIn5ALfshaYlmrN1Q5qpr9IpAbY2FWDPS5aD2BRESyNUsHLSXW0ukOQ2eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOMKvlga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOMKvlga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9482C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737440153;
	bh=wWMbuoCGfJ7irsatYP3rYKTPA07qWqMZKBQ9AzBSUNg=;
	h=To:Subject:From:Date:From;
	b=iOMKvlgann/ZPvnQhVTRqPd+B1GsOOncwlue3qtTAIxhomF28cjeLAS4+8Q+/5KHA
	 P7Sn4Lc+jr1DaxZZq9VONgH0WQ+29CYbIRKRU2MIaEj2WbjQnZctavenlhqKKzzPTB
	 7HqTI3RqS0toEPbEuShHLVzP3DLdRi7fYUM0LgZgx3MZfuhRqYN9lOIcFi38wJAOTH
	 YV2ZR2IyOocfHJbq7lu5atktALw0p7OIdz000xGTMz4U/RGPQnFsxyzhUg3Q3IkTw+
	 eHruuLRLW61nQfE+6piq92Tje4I5l/AKlihSdR3reL19H2LVymNf2YixjudM7g71ep
	 C97mv7VJqz/iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F61EC02185
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173744015363.9443.17926989147929224869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0a8c11faff028d8d9d355380e6f08d5fa9bfa29d1f5b2f03eef10d1e7962f7
Date: Tue, 21 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737440153
