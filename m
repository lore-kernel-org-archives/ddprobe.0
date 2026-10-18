Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9BB325701
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792288834; cv=none; b=sodByZzHDG0LtLQaMU6iWwzxAG3AkhcfU4u3R7KT6jA6Le6p62qTPLQaimcVsx6msptsKd7YdYpOtCCJly8XBNA+6XG7ZC96oBLhR0MOPGGaEGvXfDSsGeH0fL9iguRF7u2kJ/iws/Z/TfdYyGVCH5xYxfi6VwV4n/ZJ8xlymiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792288834; c=relaxed/simple;
	bh=O4idLA+KM2Nja7OsKuPL4gpqSosoPhIGOZi+EsbZPHM=;
	h=To:Subject:From:Message-Id:Date; b=c59tsyrCC3AYk7U4XHgEB2j/dtrI7rp7FQfh+dZQ4SShGv96mUDYonKhMnZofAaYR6i0xAb+BXeRRI+z/H4VzXIN58ZHAibtKbI7r8WQjNXuL9HPL4N7me8i4U3Zgz+zTjWz21jkZifsrQfuQIpymTPGbydyjtpBbzwY9Efu+80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRBWQJqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRBWQJqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECBF4C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792288834;
	bh=O4idLA+KM2Nja7OsKuPL4gpqSosoPhIGOZi+EsbZPHM=;
	h=To:Subject:From:Date:From;
	b=tRBWQJqJ+iBw/nG/bt8fG/42RdQbcVfOvhOH+lRXx+RNcjIPm3nhlJhcWLOM9nVXg
	 wSGzSsydaram0IrhPN0ElDCJot4MHJSb6fB5kHIfGTfXpPjkFwwWy/2v8zPWfF00JS
	 NuF7CGX+P/AQadcN4gFV82tA1C2MKoPGqZaCFXOdpIXimOoM5df3wBdjBSi2xFSDg/
	 5EBTurHai40MvA0j/NgHajQ7URoyEpgAFcm5aHaG33Ot8c1rx9XXcwhA96YHyzQWj7
	 +OAHw2YopZbDxc1XrIOXCZvLSmzx4qlxTW9HTdEH7C3iIxMbXjdLHbt8Xd1svza2s8
	 NjFug15w1tM9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6AA7CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179228883376.10487.10160942208513775687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17d059770efb8d295e3086a514093ee06605ca70d61a310ed58d04c0d433036
Date: Sun, 18 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792288833
