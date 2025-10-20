Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D9435957
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760921394; cv=none; b=gOQWU75cFd3LbnT7igrdhTpzg2EEuWETWgTd8A9MNasvlNqCaPoxzezc771uR4WAoOS4kPGhNf8fOdALsoK1Z+1G0+H/5CkIETcVqkVAtioyArvryBU9wWQVEQyUOn1zJp9scIuf0mGvxWAl++pFmDiqfRftnwk2zDQRoWeOUV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760921394; c=relaxed/simple;
	bh=+sFeXBhg20jFrDEKB3xkjQBNJ9t5Z46puBwuf/u/DOU=;
	h=To:Subject:From:Message-Id:Date; b=e3daKuoKrhfRirjNTV2fBhrX4YvRS4VTsvjgB18OshUYzqgRNMpoG3qO1EWYwEDyT+WjVLg+U3hjow72l3niaU4PlXlmqBWAQDy6BM5iXn9g3hprh4Dv5KMXZYFVXeheVABdLF5NdfzEx6Tcu9W6evMboBo0A7BCkV8dLGgX31g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWtpBBrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWtpBBrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C5BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760921393;
	bh=+sFeXBhg20jFrDEKB3xkjQBNJ9t5Z46puBwuf/u/DOU=;
	h=To:Subject:From:Date:From;
	b=WWtpBBrCjG3nG6Ut1ojPQAx1A0Vs0Da/vPLrHvWT7zXUNeO7kE6ZdPW17S8x2w3fB
	 BTPpqiMWi7dPGsnQcP9kd57OhI/f4FehmdI1cybF6Z7gd3PRz+Gi9m5NrBOmdAcWwV
	 Ir2n3j5QPlJyxKScVBXb1qc4GJCnuejFdc0T+zG3/k554PtopCXyNiLuoBROZhTbRo
	 WhfeUWEioGDleKNB9zPeEtCLCrdKPD1V9QWojTKX6phdSQx3Wu+LS9fWMGER4BGfSV
	 FKvKEtMWqfD2j4GtsNlTsxDVlfTGiVjgkZaXANclHrkjd+vSP7qJz0YxjzHQPNE3FU
	 Gze8xptx4oONQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94910CCD195
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092139357.19273.13216097393371507194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 416fa2121b5566959fe83bdf78aee27b0446e8949b80271b4b684dc358584ac7
Date: Mon, 20 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760921393
