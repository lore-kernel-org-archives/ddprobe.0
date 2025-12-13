Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E84F1C84D7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765630374; cv=none; b=MHAexS1fP+kHqGCb0uclFcHOYNVUnk5vhynl0272Q6CzM6Pc/6twuhWetzrDwzI1ax0xrb2V3ZEnF20Iy0qjNXtDU7K/NrgdWCcgv4kkaF5n51vWQjokKvEqU5uAHdy4T3AEuFLYXM2WVPuYRJaxRjIHxkWML/zp9RLnnn+vRKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765630374; c=relaxed/simple;
	bh=+3otbsLz32nah8c0IvGX7R4CHnZ0odKxo45+ejc3f08=;
	h=To:Subject:From:Message-Id:Date; b=i/9VQPfi3/Hp0qCGct2lNDj4sittrZgzBei5if022J9XY0nnZdDLZ5mdXNfaKQn2GNr7gfoAkE5V6rBPRkHLx32YuY14/0UBL1/Lp+e+r1AMa6d63sAUBzcSinFt8dbY2NBkGZRdz5/Fd8Lgh6GZzH2fAyx1+x7EsKSMNzsN/Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qDkx+/X6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qDkx+/X6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC845C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765630373;
	bh=+3otbsLz32nah8c0IvGX7R4CHnZ0odKxo45+ejc3f08=;
	h=To:Subject:From:Date:From;
	b=qDkx+/X6iSYGTbtrAtJIVUU6LJx7AyotXyPYbpjPEpDA11h4uUepmM5CJDxAyx2eH
	 yb0gkQreO7B2z5KMj5HYIi4Lisoa2K17C41u5qi/gbGgWp+OoBfcocmlKL+ECTOXPy
	 5BSyicBSLWbCX0hzhZpyBTQ76HsUO7K5sJTl20FncOeGvZPBxq3zWrJWqKUes3kzir
	 SJRcxHvc27tisHJPOznxhu4Wg3bX6G7OucHzbkq/0J3U7Bm0yk+sqTAhOrhLxwKkUY
	 +NaxSGECiaRgo8WGamRHNTXg/LJ0BeTfEaOX/LHkt+AGwuwZN1vYAhCdPMBi3VFBh5
	 tv1fk/7CgTzGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973BED5B154
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563037358.32083.3539721983473750129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29dd20f1c0f782d8aceb23c73b040a1a77f696766bd05de742540ad79c00462
Date: Sat, 13 Dec 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765630373
