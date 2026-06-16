Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310D539A063
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781595394; cv=none; b=BG7PzCZObS8Efm4PhyM7UFJ2I0HiR0mjJs1QVLLdkEaC8deSbDUotb78EaLWN2AsX7VZnslfJ95fmpIBIVEIHQMzRG7uMU8NK5CUQ1ZViIrmjFzk6Si22juXWmfi1P42adyiKhzGsfz8rJIgVDwKwrVBYZBPcV3j+mmuaDipkJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781595394; c=relaxed/simple;
	bh=JQI6xi1J92eece7Mc8N8HY+Uh3Kp5yN8jLqNJo6szfA=;
	h=To:Subject:From:Message-Id:Date; b=U8aGiPR5z5fJ/Uh0eMkQ8zudJxZLLiKdM3nEvilkKxb+OBSvsNaFeA4AHocw8SWvkTG7DVjv8+B0wUxwBHIZdenBhznJL01NGdbd8NgsrKQgtsDaa9UUWxlIjwrRckxt6iVnR762Aiai5DTAyRs3O79MmCH7CcQqI9H1eSkKs0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNLEKZdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNLEKZdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B3BC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781595393;
	bh=JQI6xi1J92eece7Mc8N8HY+Uh3Kp5yN8jLqNJo6szfA=;
	h=To:Subject:From:Date:From;
	b=rNLEKZdkZAIW1FkYmw5VJXrXXjFE4MwI6W3zkWqobUQdoQtOT5+h4AUKar5BBlUbi
	 3W4ynqvQ9gm4KMVeTVNUof97pFrQJYe+8Mw9WzMP6Ab1waPzWeC7kBEPkvUgEaywjH
	 76woCnY+PbSiMM6sykfu2FWWT25bBtZRyeLGAjga/729OjoLu2CkdkJShGlJOv80py
	 gXn3THX9EdV/nNo5t99MBvfdWpdiYEDlFIqjQvNFUCmI89k/cM5VIrS9EFUPxLBpUm
	 y1aQBE8n/icqymX8ivPq5Y+fK8vp3zUexi7b9MIqeZIh2rzD/pDXydP9TJZRJN7IOX
	 qbL2WwaBbpaAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC002CD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 07:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178159539369.1683.4237611249543209913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f52ddbaa98b16b1899dc60fdd7d818990744f24fc3d1044bce3c9d4b390dc30
Date: Tue, 16 Jun 2026 07:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781595393
