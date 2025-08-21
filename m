Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A6115E5DC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755784194; cv=none; b=Ct46dmDaxGhkpBNpBmtLVWChwfukVQoZqRJr+ax5mxWi5/i1XBYpF7hkuvlKV8T32O3nebv46y6W2pRQRzAml0z3sxp1ZsmhbawT7HhbkZJqy/uorNxNtz3vgcx8FX2gAYPEQ2xOa3D4kTJDbBp/M6uhY6NnkmycJsxMfqOrVtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755784194; c=relaxed/simple;
	bh=T/CuVLv8Hizm0DkwpPkPYQotUpaHrLxYgF8sEpWRjvA=;
	h=To:Subject:From:Message-Id:Date; b=Y848owSQ6izP9GqCSh9mm50DUK8aGtaZbFKy6gUQhCjrIShLgeTN3i5W/3lgZCum52Bh2YV+g/U8opQvdpyxFpvBlkdpDYcNek7o6K3t81ZkOT5//K7QtOSuV107KohtYHEqOUC/p4K3MWK0/RjkXw+ZqaHgbK8KSQYgguJFEKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X4uewj8e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X4uewj8e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD44C113D0
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755784193;
	bh=T/CuVLv8Hizm0DkwpPkPYQotUpaHrLxYgF8sEpWRjvA=;
	h=To:Subject:From:Date:From;
	b=X4uewj8e7nMGugpXjPSO20iooijKIOoNuJbq5kz1/XMSoY2Ka6Z1nucU/Q9g8eZXs
	 CWF8c+1M2KHoTiGderau6nyU9l5qj8muRwyBJaId3fiw/3VjzoEDkwKiXjdbuKRWp6
	 rPQBoTTV1sxv/OJGbEeiQ0HqAcXxe3YGMOzTl5XhiOvcNeQ2NkOdKddyJS7vS04bDI
	 lgs7Q3x2JOUPz7qmTvArmkdD0iuJzXLPcEqNhUWtCaLAQs5M9r/Z5CW1lcNf87yNFI
	 +RFW0l2t/lZrwOcXEcb8GVHyaDBx5FtD5wz04YRYWMNW9DhLft36HIPnzpKxWCosnA
	 W/vV9KmVjtQrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E99CCA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175578419357.8621.17728956606874003476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e1c499f3d7c7908f832d9e045baef46ef08cd86c9e4390292e73dcf2214979
Date: Thu, 21 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755784193
