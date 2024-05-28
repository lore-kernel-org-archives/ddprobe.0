Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6D322089
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716939863; cv=none; b=e1XOYp4BA6pkm/s6h5kTT6q2MnM95hSMF8cV/xLHuconVWKGJIFTouuWlh5YbzbbpeaS4DGuYQ3s1zP/PsKtlImIy+1WLRaIW88xkrzM6kdXICc1x/QX5TwsVBtV3zNXu5OE9yRAzw34HYYOMn3KrnQF0ghf7yIXEHDta1CQ+wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716939863; c=relaxed/simple;
	bh=WE8X8HaiVdcDtLFEHvHZhOyK5zPnMBCBOpHv++XCw6c=;
	h=To:Subject:From:Message-Id:Date; b=qF28NuxAUahCnQmk32m2NZ+DY8ubBhEIXZmRaArgtA8HeL2W1SQ+WoOXQTNTBnxjcYbUthc1mo7CwnZ5N8AfFjX0ynpgqMsgcZrzZc2oxbA3uUWayxGTN5BxI6VeJ+9hiGvYv0lNC18VuMoBzCZvqtLBdWA/lYwZokoXuxY+hpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umdlU3BB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umdlU3BB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88D5C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716939862;
	bh=WE8X8HaiVdcDtLFEHvHZhOyK5zPnMBCBOpHv++XCw6c=;
	h=To:Subject:From:Date:From;
	b=umdlU3BB4EB+cZksfvxKaEWDYg0s3p0rZnjuYaKawkLVVWbqSuKtOFQq4lkcrh7VL
	 oYdNlBbvJLXOHQQ9LDUn4q5ForaIijSipNsirXN1Zxrak+kR9wziNRG7aaFOZHZKdi
	 uhAij3L7jhHWlFL0BpK2eApOyQ741byJ6BDNbkgVbdIR/g1qXq1jjGJghIGzN/vNAK
	 HT/PbDXWfn3jlzi7TY+AWn2U0uUiylt65nj3pcuPw4AZLaJmoLsJdMNKbv+iKHjEsL
	 A9QBhTtrfya9ZbA4uMmMbuxNnkiTx+E2SfUlCI2yTv2wgVc+2uPZBCU8Tc2FkDYNqZ
	 1F9taNFpIf2ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8144C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 23:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171693986278.7499.15299138998644607927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c83ab04558cf0d43865b3b21971e8d531b681e6e4ffff17f1e6d68490bb704b
Date: Tue, 28 May 2024 23:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716939862
