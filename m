Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA9235979
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777590454; cv=none; b=EQu1u6FWVCGDEYode8Dsk+BWv9FqTVPWqz1rUsOON6FJKGcjmvllpWauQFsWX+u39tNXs2aDe8SUcLg+P3D4so7499ajDWyewQhOYZnQYSYClKIY2Azxf93pLkOfkxqDAeuASuBLaoHAaBkf5oP1TtqtuNG2Iq429Bty4huYt2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777590454; c=relaxed/simple;
	bh=1YjfJLczumEYO2iajTIA502vINkCcmqvEBTHpWIck4g=;
	h=To:Subject:From:Message-Id:Date; b=JTKi1HfPp2X8o/TmtcDjBR7hzmz1sk9ez5fR5eA5KlBv4l/eJssOYs/cB8997dAtyTLv+QzBZaBJuVd4Hebvk23HyA7UNxVMvquHc7/QkC8Rmt/q8eVTAZ3MnAL8bOZHufciUuRXnM5iHbd5IukEUMvD2X3wcFfolIwHrrQ4FsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6fEbZkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6fEbZkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2001C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777590453;
	bh=1YjfJLczumEYO2iajTIA502vINkCcmqvEBTHpWIck4g=;
	h=To:Subject:From:Date:From;
	b=L6fEbZkGBC0V2lMgACJ/CbA9bIsXpib3dMo4TicXIoE1DzTwbMTkPUowLqjyWD7N5
	 3WbwrllMByEsvGyMfq7ReHIgby6ZBtaD/xxs266PZLwSpBd//pAAvTXmpJKosWpOP/
	 yQV6IMFiIYlUjNq/dOVXpHkcnlGjBa+fJnS1KlhcdSudIFxJWLOCTDnSJKIWeGlPmQ
	 dhdjBTHdWD5yUktWdV1UfBnLtwM0X0IYnMxZGcKwt4BJvj/LnNoxwhIZqHXlBGHu4U
	 elw9noRwE4nM8KHEKp+IZftCyh9HUc+l6kvNUnIyd2wS2+83+l/OvwyAnnmniBrM2K
	 Fk9PlUADCg0qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0554FF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177759045368.15360.7066267808676533046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c794c60db18d79433d865b206df7db877b751098b3cbcedbd9ef351f7b969b
Date: Thu, 30 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777590453
