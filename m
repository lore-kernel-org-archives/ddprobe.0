Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAA78248B
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766123634; cv=none; b=DKUOygKMnSXDRcgMewRanfLMGIbwN2FMu2NrWiXWc54AZzNpmLu3VNWqt+IE++9AmNAXG7bzz02QjffjW2c2AYs2UMBC7vAl9+guNWIRVKLe5X15rTXlrqWjqXSl+Tk91m12laCRaJOnfkVe2FgqwVMjHTXl3PIL3yEzk55tIIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766123634; c=relaxed/simple;
	bh=UuowaukIaqFwR73XA3TGabepvMESe3MH9o6zyGVTOic=;
	h=To:Subject:From:Message-Id:Date; b=hte3qJ/PemGrAAPFf7SpjCqRMqZDRc2mtnnVTnCEkgDIIunCpS+VWM4uQx/fi3vGfvAP9PgFJzEW1x4Pg7cg5j8Wsq1h0TjvD/Ce0tdsO07EQc6H9zhb8Nya010VgxnD1eX/Ly+NyNp9vff12c+R0koXkpB+aJF3qCRDJsuGtLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBmwM9Pc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBmwM9Pc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F6FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766123633;
	bh=UuowaukIaqFwR73XA3TGabepvMESe3MH9o6zyGVTOic=;
	h=To:Subject:From:Date:From;
	b=uBmwM9Pc1HDFwcDKiLyZoiJU+lnzmerawqKi+JG65yfzUMW0VbxMa60xlHBfxnUgv
	 XYIQWxrv3STmKmmgtwUnw3Y7AZAc7adY+N9lBPNYE3rNqwYu894AZDEHE11b05rLgc
	 P7bjSHzVpOdIwzZXv9rwwMh9mDaY1Rd/XyBfWFe4h1iikzl/4S6GBx9f+NPDqOE7zg
	 S07obS7QT+CLiifdawB4/BO1ln3iAnbcQ7uR15XpfMEkbnmXnyyXutMpJBtQZedfxI
	 CSwsAmZXNAPWVRwwP3i4A9Ma+5t/TRrEAWyM9NBrz4njbFWbuRKuLY+Bmbq+MK86MV
	 1kBiVfcf1KCRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90530D74951
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176612363358.18144.9069966356771992589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 912b5e04e3b1a5b1ef1ec88b6e187ca57fd99f32fc8ebe2353bcc9b760251dab
Date: Fri, 19 Dec 2025 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766123633
