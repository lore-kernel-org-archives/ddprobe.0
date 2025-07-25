Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A1811CA9
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753403993; cv=none; b=u3/1VokKH6mw7+/Rn1BmZN4Gh4AYznxDS2C+ND62he3u6+C8YKGyoyda3OrNhx/qR5Jk2R4x+XiiizzWyKSqdiCsp6uxsH8jrbUPslCz2TvTSeTTNAFj7mqBRQFPgkaXYiHlX0RrrmpigxFsWJgBX62jfKxIXTUH1Aw3z6A/rbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753403993; c=relaxed/simple;
	bh=1oQ4UPoz6OxN8iy3Ofnref4JA7rUdeeNp0GvASHGbqc=;
	h=To:Subject:From:Message-Id:Date; b=l1eYctRuaTQvHEDf9Y900+rFlZQhFSG82gdxIM9a72y3fRznVI1yg4Pc4OkDQ5zla6LJqU8lX9vRfUyr0BD6Gw7sXIoOnw14l4pu4eVRXTS5BF4Xqwvqa9nsi/VX2EqMzp28DdI+jTbHMVuqHyOcs8C3d/oBqDe0C9mhcJa+cIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvsKktJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvsKktJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F633C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753403993;
	bh=1oQ4UPoz6OxN8iy3Ofnref4JA7rUdeeNp0GvASHGbqc=;
	h=To:Subject:From:Date:From;
	b=XvsKktJSzQ7OKtL7vIDIKPRa0Anw6bJp0QL9VZ6C7rufpbKUqsJG8tbpgQnJ2C0FO
	 DvsWyfco2wryWKHJk/hB2ccAzlv1fAkF9BbUxdcvj2+Vvbi94CYD/4GFQp56kef8Kq
	 Ney4Owonx4Ee4WNRCqbECb+LBliPCyEzvmeKpbncS8pu0gos14Qf8i17NnZQEN+QmQ
	 zbEzZ3qtNlmL40+jCdtVZ2WIo+QWaQ7P5Fflq1UhWozQQJ50U/xXbuN+P0O4KeJEyg
	 anfpnmiDKW8AAuLekh88guCCbs4F37GObUb19gMBU5hV5JW+26lnG6c6Ipm8vSH894
	 ZWapJeyR8F8vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90247C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340399358.21492.3028833692181514814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b1b91a7e3ed3983d3fd7a2448135b951abd49219860ffa5c40c78a641a7da8c
Date: Fri, 25 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753403993
