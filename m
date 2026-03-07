Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC4713959D
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772844294; cv=none; b=g+Wp0mScdEx/6jWc+RUEjRUiFW59o6aTU52Ckk6Ksh/a7WvGrTUPLYQgwUT4KBOMxGchkahwyjaYMv0e9ddEclG8K3UCW4w4NGpAEWKNGX2+xlQHEFsu1Dc9ST1fmo9y1oDAMBhfh33PK0gVqfDJu2t3Wb9Syuo1M3/Ab1jnsII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772844294; c=relaxed/simple;
	bh=ydNjDGCSCt/mRI65n/jf7HNoDv2wJruSIQpdpvpZA64=;
	h=To:Subject:From:Message-Id:Date; b=Y+PbCl94R5tUTEnhUJSKkD69r81CRzxMZ423u5u6hL44ye1RT9SXk7cZQ8ZShv97FG/xNDCciiAcg+jdZbjA6ixRjc60mfyJ3qc/05ypsF+PX7zwTyA9DhsathdKSwHHfdqStPyYNThq8uyckvuDQELCdA3q/RxVCdR/KSQCf6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/qiV91n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/qiV91n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60E6C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772844293;
	bh=ydNjDGCSCt/mRI65n/jf7HNoDv2wJruSIQpdpvpZA64=;
	h=To:Subject:From:Date:From;
	b=e/qiV91nCS6ihoLe5NlBZfSzyZybCDm8dBu5ko3bZBJl1X11RE7vvkBF3XDqmpq/4
	 wvQNfNX+2BqZ02lldq0jzGi1Dw5ldVRUWiXCohux+l7nMa0eaaousNYH5/N++T8W0H
	 I8uN5pgERFUiYug3PpcD43xNhSOxKycZmtIWOTgnA/oKh8JRY6gpAH1nkAjBt8R2vO
	 EgjtOlXLS5mWWbzGl8OMLixDAeekI1n0AwPUD/E/R2Lakwu30sfI7IKI834kzSVF80
	 esRkn2Pu9j4/TYnsLZU4JQeysUo3JTDe53jnNWuAJa/GEmQprIEXcOPr5j7Ml+kvHP
	 m8dNMooGMMMtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34B2FC9EC0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177284429358.16828.16406591052844032089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68fdde0deb547631ecebffcea28ff67306a5277e314608141718dc6976613020
Date: Sat, 07 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772844293
