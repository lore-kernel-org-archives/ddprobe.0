Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2455F2E8B9B
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762283394; cv=none; b=XIRSDEQG7uKCDuggD+eQdfnbs1BB1rDARSqlWijP1ICfHsguUXzgC+5f4ag67JhNxvsQUPLiA23MJZYU5RPAHqY7Szyp1eljmaJrZTC8vu0jyLdKPoir9M1CBbRjVt0whfeNfRzIiX5IN6QUYOeZ+2wU8trygkXOgNHOalXELuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762283394; c=relaxed/simple;
	bh=ABvAIEgdBg0pfHGnIe/EcMr8MKasFiZL30SGEDehxGs=;
	h=To:Subject:From:Message-Id:Date; b=oWFf2w9waAgg/nWupJFtJx5yK5Rx0h1indY8t+VTNUHZztva+e0PJrbBjzoHdLxzKJU2NCjNUvga32r8lJQk/3WqNGjLxjyjiRupOzIrQVuT504GRk8LtTxVbrLYRzvqpkk59VdK/Ooa+baUh9QeIUxua4Jb6veftv/KSi+Bom0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgmUBjO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgmUBjO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEE5C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762283393;
	bh=ABvAIEgdBg0pfHGnIe/EcMr8MKasFiZL30SGEDehxGs=;
	h=To:Subject:From:Date:From;
	b=PgmUBjO6E3O3pOzPz4GnPeuXD3fckljj/LlwGFwPGVF8Oi5mL+Gwb9dfgOi1FUD6U
	 TvoWDI5/KcY7rsFasuWrxdGqObC9N0pQRTFAnKMJgkMZljN9WTy/mu/MVcSKR1xAzT
	 02yetDWzJHg8nm34LIbnu7lzbCqf6Zqf2hawcLi8VlrQDGD7uklfz1CIRw+Ic/9dbK
	 STHTtbqxnoatOC/tnfgMLbjgx9+Os5KCNcFvL6hLwcut+oIp9L+gw6UnR1Nm+6pNng
	 PF3+p6mdFDZi/Iad7DNNSrQYLMCjEW9gE+DU1BRxd8aQSdr27Kjp1PPQFCU2II108d
	 9C/0/Sd3oOqAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A9CCCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228339358.5564.2522883319354675660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a670d7e4f2aa91b17e86b2b9056bbcf12f896632e8ebcc69f4464df7f92a9bc
Date: Tue, 04 Nov 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762283393
