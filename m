Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F581C7660
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725353754; cv=none; b=g++H7E457THBZzXRyttpshOLmyu3GOsjn7vKflwE3x06blfj/OcNR4bmQS85FiOFQNVpMbxbEElcHujuFHtYQi++1EZHmtStrk3+rF0IEOB3ahFPQcFBm9BGpsgCJjq4pKs1O92ehDa5PSbEalRviV9F+P0ozX8HhDJNXb44FP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725353754; c=relaxed/simple;
	bh=WrnKgWjrXZPoixt183zasSxZaWVIXnr5KFPTonL9PfE=;
	h=To:Subject:From:Message-Id:Date; b=fLCti16ZfFL6CaI6baq4+HWrb5XiRFSvK/GN7yk6V4aXinu3QJCuG15rQrOPKRa1IOlVyNxXldFZ5PctSxTWFgIkJUlmXM7NQPdMy0lf7kcNWTkerlWGs2bx2uWkIhzKDgF9w8bGhd5lOenIXbnu1+2/yb0YW3xWOyRaFVO4r+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDDaw6LU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDDaw6LU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C6CC4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725353753;
	bh=WrnKgWjrXZPoixt183zasSxZaWVIXnr5KFPTonL9PfE=;
	h=To:Subject:From:Date:From;
	b=nDDaw6LUsFw9yqCSo2M6qxOQVek1L/Bozj9vd3M1oskYmA1pPL3HC6HXqX+0Q+tnv
	 DgjqVQ+/AIoF5ZInzfvywGegSW9Y3sTYD26cUqsXXY4B80Lj/e7GUGvHzymNfuEswB
	 2QLGScJ7lprNdZ2KB2ZwqNYDybO7jgOFzD9TTPH9w5GlX2aUt2D4NMOK1lzQQrGzHi
	 zVIWgNlyF8ezFM+paVUzUV0IP2nNQjzCk4ysYMwkf7nsfgrU1VhcTG2a79xZmNueG0
	 jOKbF4vDJ+R8mWydSHLvknm13CcHsIApFIqs/N5QZBB+H9yZ05GLUeK2CkI8NhS0XA
	 0ezUkm6W77X3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91592CD13CF
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172535375358.27345.14674336118939735275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3908b2f6ba0c867c1494bd4711080675a12b9d6f64a586fcf80dd4248823fde3
Date: Tue, 03 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725353753
