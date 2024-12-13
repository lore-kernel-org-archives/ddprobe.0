Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D52219048F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734120354; cv=none; b=UGNsYffE8ctxYcFuvuJUnjQAm4B2/wGcL2H/UmAxiwML5Vv8HQSsctiVwWd1wO5dp3Ws2NCefcgBTnpP4YeXaXwpx8W4WiOOSnd0Cavs3DbRRAwfq12utnAoheR3kiWvIuybyK6dL1BkFB2A6iKUrNrZmIQ5o3l9RdArblkQbIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734120354; c=relaxed/simple;
	bh=Al7BAP+sGRz1hqxFNtOcJjl0oqqaWVwi6kCUF4F/RrE=;
	h=To:Subject:From:Message-Id:Date; b=aw9KumAHAZajP4qSROIdcgePfoNisYb/qVwbpCbI61aNM+z32z3Grecly60rZQ+1YgO1YYMuQAroV0NfFovsVwy+mUT4mys92em9qVoVb2QfyFLtVJZVRGF6j4qlUq+E4WmbBh7eHfRm1CRZELsrdDtzPR2Byiy5ssrb9Dix/zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P93f600Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P93f600Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7942C4CED4
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734120353;
	bh=Al7BAP+sGRz1hqxFNtOcJjl0oqqaWVwi6kCUF4F/RrE=;
	h=To:Subject:From:Date:From;
	b=P93f600YnHZ/Mb7FEFqZ6uoHAK/iDay28ROaeAXhgflxVVqjDHGRAHHbBYe6o9wcC
	 6GyPSP/j1YGsJnJ0RTvL3oKWXhA2PIenVGtiw7RFC8FbCEU71gI0brAUKK96JjrW3m
	 V0eXu81CsR1I5wVv98NX45rFY2oGE5VFlXh1t4TtxEDK4oT6dttB86QJwKLhBNPINX
	 S5lDLagvwphf/cAAuqBsO3cwl3tWLn1laoGql6H8GuBbZRrPEl2xQ2AtIOfLkZGDLC
	 /tzbMFlGJJTF85x3cWB3oJBdb+cz1qbWPOd5ZXHt9Cjcmcjy8qsNr+hihaznIzQOEU
	 rCahWohq7NnTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F28E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173412035359.30124.10699698162121929635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9115a972b8b68fca25370193d2bc3e986a3f4902481eaac20ebea2b414b7320
Date: Fri, 13 Dec 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734120353
