Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238E86BB39
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722072354; cv=none; b=kk4vE2fzqcSbUi+Nf7e36N7z5l5d9RTCwk21d9w0UHCBX2COsjgYvJFVXbikx6oK+p5S/OxrCNHUkxde9Dc6j5GzZQ63PAPeTOw9+8PaAEhCXUznJrJ3m6/oY6AibPzpOhVnCR0ql911UbYxIecxgu2BOTZqOd58T6XDnEQ7OvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722072354; c=relaxed/simple;
	bh=KvfBK5GzaGjIgv7CzaRyNfbJb15GsYm88izc18VGTAI=;
	h=To:Subject:From:Message-Id:Date; b=Ri5arUPj+1b+hvgWB+vot6eDrqhUl+6ZWCodHG0//723ZS0YiUwmGU0oNIJ3OSI3iwKxEUKU1zPw6ehZ79pyNCQSWvaZvYp/CoBivowPZf5a6nyG71q6yflYYi1vdGUF3dQlsUhqWcmFCSGXZWsJjnvX4Tmlx0B5GZtC9EsaYTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+IYI6Tl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+IYI6Tl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A887DC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722072353;
	bh=KvfBK5GzaGjIgv7CzaRyNfbJb15GsYm88izc18VGTAI=;
	h=To:Subject:From:Date:From;
	b=H+IYI6TlyaOppIul4VITLvIoazUFpYdeeABQ6zSH4vL8ydIwH6Po2wPe40CiNt5RC
	 K7R//z8AWPrarf08J1vWduvMoEpCe+qJGuY6ZZRJZbFzQHLf0gYxqarszLGHTJaH8T
	 0Fx2JKHdaqx8pNHUk1HHhd9KDP5B3t9Dm+eklqwSDCL2Q5jrrqZG7RQCEwdsRqlOkg
	 hzxDmGpRfSjiq0D5csMudnzuigWofNxs2VfnJvzqwCBETqOpcEEOPogK4DMxEmkX5N
	 ioyPjAM61UQ2RQrNxXBGY1Ug/P69yFpguysYiMzq2Yfe0W6LuHg6011oBJqo+hFVYY
	 JM/GqWNUBdw3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96626C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172207235359.30304.1850270405301728757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88464e0918ea4cdca3d6ea884d0cc4a568ec260c2b7f1f5fb0fc08eae9cf91d
Date: Sat, 27 Jul 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722072353
