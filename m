Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B572E11CC
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749998394; cv=none; b=SjqAVigOzbfvurHkRFVzaCAK2rQMiQmxmohdzBjBdNUcwGryir6eHcVDJnzUarQQ+K2xJJl/zDjCBVz5URWa+qztDaB+94e5EpcL/moRRzdNVwhNTK6/DYk2NHJp603+oQjnd0xWhW2Qfly+uKMN68w0jYEJHoceIkW9Zzd1ThQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749998394; c=relaxed/simple;
	bh=lo1Bln6uQ3Idzr1iDaOSBLYDOVWqNrJAuYDdf2lYwBY=;
	h=To:Subject:From:Message-Id:Date; b=YrAeyGuKrTD/iSr49UvJ3uKnHuOx8D9g+EhlDzwnHUpVeKm8Xu08h0yJMRqmPVU5s/MRlDeWdbcqW3F23wkL/Nade/G5VWjaMKxHc7RdYznmif9c0MVeD4QwLaTrNyi0YEHd4CcJfg4cmw7ns++3IrBdqU7dwP1slTH2AxaiJDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inQmHdsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inQmHdsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D577EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749998393;
	bh=lo1Bln6uQ3Idzr1iDaOSBLYDOVWqNrJAuYDdf2lYwBY=;
	h=To:Subject:From:Date:From;
	b=inQmHdsxpD2Y6WDGFDfW3VgD0a9RrOY+23tEG03MvYzAzPx2QtR9+EPuTA+Buf6/B
	 NPyEJ4r0YamkRCksXuhdPq7RwU+IlRlprKL1p80vDork0Hd1ebVYq8YYgjKPmig2lv
	 5xc/WH07oSEjcuegC5Fy82mHUHPNCJl9VTn7yaIGu0dJwfiM4lkhAOAuRcPfy1w95a
	 vjs5CT4AfaZ4AKmnm5yi1FrLwq7g6X83c7UvcbY9ojA6DXJN3Z4ZhBA7n2k8FMtnv9
	 iWrOW5V6Hyv1HFizN6ZLPl3/BcDqSXS/iFEU9LjqPDDT5nv69AjusZkEqTgY5OW5yy
	 IkxqSQrzD0+AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4740C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174999839365.20905.15321498214681283727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1fe23144c284bf5e9b553fa607e7a82a26b8e198fa9c929fd03d126b0407575
Date: Sun, 15 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749998393
