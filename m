Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51011252904
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759778394; cv=none; b=UdfifbN8BknCEfw5HSxvmNyuMSSSccqhJe0nLLBRo220LNE6O93FtxW8Y203uEuAFH8ZKnXNXffV+W3BROhZ7hcGrIyCFzjShBU/4RvWGZ1F601IM8cIxpLr/5X+oUcV2mZEQP5tK6zSOBAK/dE6JkbTQ0dHCDwN185BEQnsbyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759778394; c=relaxed/simple;
	bh=RRUOPzoJR7WjwJAn9C2ZfI8QWQGjvpa8CUywHnPsK9Q=;
	h=To:Subject:From:Message-Id:Date; b=oLE382G8veZG/OMJD42yIqCgMGf48JkX+DH8HpGrTp3jfyY1zQpk5aQUU/dCWd3tkH0Ey4wdOit3yks4v93nhuJftc7nztoHzAdLgXrW9PcM+MBoaK9UEJBncPzRRG+LTZPpqRpG6QK0mal3xcYNzfj+H9TVn4OHw2c/OeYMv6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8FmtVwv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8FmtVwv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7221C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759778393;
	bh=RRUOPzoJR7WjwJAn9C2ZfI8QWQGjvpa8CUywHnPsK9Q=;
	h=To:Subject:From:Date:From;
	b=d8FmtVwvg65aJHXYw9QubZlBst09V4bDCaBD9pnhNfyFkVSROFTYEQmW0tmrnxMxe
	 EgWI+iibEM3T8V/JiyHP0qJEieAVizk35AL4phIp5POQeD6Vpl1FjrGDW1xl4RbwX1
	 NPC5+IS6b4RQYsyrBlTWFY7WBl+RFnabKimbTKAHQUVUGzlXyguIModNlqP90JvRth
	 LrkVWHREb+55VGkXd/9rZUGWvuQLMTOK51nRefQIRucWG0eeskQckp1ubTlPPdZbIl
	 TIli7FVmrILbpvgWtYAgGun+f4KgeaIqUq5H0D3W1hdaRqMWBHvUreZbIXL8w0QshG
	 oiA/H1xSNMFmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A3ACCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175977839362.9545.4909345578488915952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b213df8047323e8928b99b8c412f4dd64325a4a708de5b1732c638d964424b5
Date: Mon, 06 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759778393
