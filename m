Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F241748F
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760104194; cv=none; b=OsrjGhrsvGcqGeQORf4PHV+uPqdxKM9p6T3IsBN27dj8o8PXKpGX+LL85mwNUmbfyV2pGl3l1edR9V7RyZgP2HoVb9t+bWtZU2qfdVozLaU9oeELHr6WsZd5HD0SNIIfMdzNBfV38q91MAHQOPMs0TuqKpNQiifPDdLbEx9yLQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760104194; c=relaxed/simple;
	bh=5jESwJ7QiTDSHRYzLz/f0qy+C0zrlD45eKb0rpDBnWc=;
	h=To:Subject:From:Message-Id:Date; b=CANITKYCYMzResfMUzfp9uZkKzZ0jZfOmndXUPBSrY4eI0KgMR3VGaIgVrWXxOBRS5aRl80Es5SjeAVDWaaYIuUJQ2RB/L9F0/iIHYlwG2gbjs/QXMU6yroSVJ2iHPN8gKkiBG+iRFFUGCDvtxSuEG01LGfoT3HdjeYPDBdWC8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XO45ZoF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XO45ZoF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73DFC4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760104193;
	bh=5jESwJ7QiTDSHRYzLz/f0qy+C0zrlD45eKb0rpDBnWc=;
	h=To:Subject:From:Date:From;
	b=XO45ZoF2IxnnjPoBzbc/Chep4OKZCuDt7zXXAwTe3JbQ+Cof2TR++hgnkE7VBwQVF
	 zrT18prBRR1SOI6wCgxAkXxH1imURBGdw3mirj5hbScDvTP141UFdZ1G22JE3X68em
	 b3UW1mGDT4ZOoMzVi39Sxvx5C4vfREacJwqVSo+ieVjzxgUueopfKuiNsXTd2UBf0Z
	 eWpV1j+x24bbt0VFOakEgI0iaOrn7WimbxDVKx+WJU2/63HmYO4pYWHTlbwbvXZOnM
	 P22gRORPL0BxkOcDJYmbn1P2rYWevgeXGJancAUC4SfNv2UdSdVuwCV0iurKJvloff
	 W2nssK9s2M2mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963FACCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176010419360.30205.4938443648059226488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca9d841ef3fa90c51f51c3a5ee717b30c9346eb9ca39660f4e08ed8baa125c50
Date: Fri, 10 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760104193
