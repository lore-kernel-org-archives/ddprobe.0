Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B28E2FD665
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778716834; cv=none; b=VmlWMEMbiobnrC+Z2P9ezwOQE1dSc58iAA4zjhLSm79aGYAtwoekpWUMp5JlM610KUFtuwYWFCgC6vXPgjr67ydsdIljMDvbypJDXU78QZr5ArasiAkVQACAShxKp1AG69RTBF3y056gt/XBqL0nFlRUVWNoVcohZ6DTKzK7r64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778716834; c=relaxed/simple;
	bh=wktDEtaiV4lRyej92YDu3hgDJ1MMKDpCaj0J3xQi0xI=;
	h=To:Subject:From:Message-Id:Date; b=oAc7rkm7a+32uvBEQBHkvlYojGxF7JZcGVvRQrZ4GPKsYppbRxl7hewcOwDDVRiqAo+rT2wx/C3Wing6ESpi+cLPmIuC+lzFKVx0BYRCJDxK85Z65shpe2F6Ex4cO1UOIQwKFGvSxN6uUgOjlT/THDvNnNzYw3938kbXlUDn6HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAL+VUQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAL+VUQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F4AC19425
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778716833;
	bh=wktDEtaiV4lRyej92YDu3hgDJ1MMKDpCaj0J3xQi0xI=;
	h=To:Subject:From:Date:From;
	b=mAL+VUQ07sJt8BlawK+/NXmCzkviOKFjDDlUP1TeTJMpfXdK/4V9f339SnIO4Wtag
	 +gNZkJBWx8JFZXYHYi3OPZMdaWTVFIgKW4cKlS055Jt1rs2TDAtfbPAnzvsr81XuyQ
	 fnfGXaDXAekjmfZPvZPGy43qywY1b4pd0klJT3aN/bgLAfaLBmObQr+VHH8IoDTkHU
	 xmKM8LJcrMkxQYP6xi0BrMizvmqtcQ1+M0WXUbZ5a6tt7t6JEvCEwIoVneznc5o9AJ
	 iZkinY9LEKK3FTrZiK8KKb12GiYTxRJs5KWIEzgk2bneU12e4trNDgfChOL4a6DMLx
	 kvnWGaG2FZ1bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FECCD4F21
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177871683370.3067.8069772686030819455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5812b97a71c0da590b51dc5dbc2610f21b4d0b1a8df901536b7415311f246ef7
Date: Thu, 14 May 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778716833
