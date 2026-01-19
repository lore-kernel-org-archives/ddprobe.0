Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039D02C86D
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768787034; cv=none; b=EcRIKoEDbomDlfYFYJG2JbNdLx0rgsAgjnzUQT7Rxw41vvHIb4FV/HHN/4e4jPtIjuBWCReuNcCW6DhSk7b1Gq3hFLPGHmdPPN7EPpO/aKHTxVJC8XLts6or4mE8P209d5UGd1faupoCuQ30yfRCReqXXT6WPcti9V3CutadKhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768787034; c=relaxed/simple;
	bh=cgkrXb1MbhLUDErxm5X5trvgG5Lo0kWXiZxQ/0o+aoY=;
	h=To:Subject:From:Message-Id:Date; b=BF+ewwRmwpkl9gyr+i+RlGnlE7ov+6oNhxkiZbwAq18e9lzK98Nvhpawg20h+GyyeKlWSZwvYrZIMq8Tnq1qWBZOMJmP0Z0fyfMasEsH1kNlrKxJk1MbSYywWiRD88aSHeClSBrsmoSUepECE0tlSKm+8N4TRk37Wcyk3JWO53w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHuZGVFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHuZGVFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A636BC116D0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768787033;
	bh=cgkrXb1MbhLUDErxm5X5trvgG5Lo0kWXiZxQ/0o+aoY=;
	h=To:Subject:From:Date:From;
	b=CHuZGVFHSp8cacaib9P4q1aUrFDuD8yfeK66uxcEFVW1bkdit4bRBgYHbIFvcj2GK
	 otK7bjdt8KMugNhpTxPckTTPZldksFfhQQb/dnOE8b4YjhVQjKo85O0H3BycaPwcag
	 BPwGffeS8Y3LMxtvn7arwyjuJz0Voc3gMAopF7H6a2cdoU8v2lUnXMcmMPjO2neSSS
	 P+iiQPN6X0V221nNu+PG7g+4LZOyliwH8+qUo0PRiwofGNJjhuqPGNor3RgI5015dm
	 f9zdk8PHdFZ/b5TY1zcihNVrRAjsg6Ac+Og1Iir0wl6Y32BmW+MmgnrKPpEHtWXJdX
	 6kcDyNkWbqWjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92678C98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176878703358.10547.5666616296994437766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20059ec257699a806295cc386d60727358a88004dbdb1bc77343b8d2c6bf139b
Date: Mon, 19 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768787033
