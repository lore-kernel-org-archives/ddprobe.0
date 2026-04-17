Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30243383C64
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776436654; cv=none; b=eJGWcHMazxf+/4X4n3KxlEtpzx4Gfbylo0fW0N0rxOLJz6X7tx+79SEeN9A3erfdoZyiu6k93qnPKi+3zVZjpd4FBsLQJ0+Fb4KJkK0D3jU8o3iyj+VqszHBUfTtnpNgZpklp5BAbIsjmpcujAeNFEoSyW5mvV5QYKilZOdGkt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776436654; c=relaxed/simple;
	bh=F27VHcz1ofLXPW/3PVf2zmtd4PCu9AlR/nB8qKq/j9M=;
	h=To:Subject:From:Message-Id:Date; b=RQxBNF7WAO20Umbgb/wbxZtkSzXDEktAlpmy/b4VURRPp+lqjebUdK8HjJyqv0s3BbmP+vYqU/70UKfe1Uo3DntoI37bX/jbsKNsapsriUfX6GipehN7Qna/27EU0tu/B08r5jntQlYstmKjwv0jXO4y6SSKhLSP/NXHhjNPwtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoyR0UPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoyR0UPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBFEC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776436653;
	bh=F27VHcz1ofLXPW/3PVf2zmtd4PCu9AlR/nB8qKq/j9M=;
	h=To:Subject:From:Date:From;
	b=PoyR0UPYhi/3XaItiIDJ1ROzVV40+0xSuy321hhEICDbWdz8FB4TPIT+Zw7dsaBu1
	 s8mdkgGDxCwJSXWGEmwu10MddTH+L6/8VvYGqhby0ihkSDN2ru/NIBQ2lkYB3sY3CC
	 pMMDdPncsWlh4c+GzxRnUGizx7VP74WlQDrsQjhE5uhmS5D2XG20nGQnM+5xDT41ZK
	 W1kR5K1XSYQc3iTzr5qG2bFJmUAeikuGmDmePPVTxIU3IfP6KlVAmba5YWG+jWkEBI
	 kUd+dM8TQEJ30RmtWduO8pcXt70uoHkWrZ4KC9pxPeqj6TMHbZ/kHw3KzqwDPflNRO
	 Lh0hcaOsmG9wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E93F436B1
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177643665368.28066.12602156124539760044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa9c9c47640b645e73e17b7b9030b26583465e964dd8ed65053573363f430d9
Date: Fri, 17 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776436653
