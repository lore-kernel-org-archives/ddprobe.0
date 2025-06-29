Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8A74685
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751169594; cv=none; b=CJuJJdgzpyNYOI5ytByOv9kmid/CVFBKBY4sW+byeFphGV0qtHw8vcTS5amXEDr0QXTIzxqRXS+kfGDZrrWCs7UMOubU1Vlf+UEUz5v6OFEg7EvzVQlMSzgduLXx9iMRBeuMPqKO0PhS3NmnTu+bMqd96mSQ5rkw4Dw0zXMtoKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751169594; c=relaxed/simple;
	bh=rBIsT/W0YwBShDocSUejrBuoWOAR0OBlnEC9TKmIbV0=;
	h=To:Subject:From:Message-Id:Date; b=oxgs8DXFWL5uF1cQ6goe4UwouIZNvQUKSIa+GdRAFf/U5fK/1tlJrYcTpvhbiQwtH8VYYugoQrz6vvO4OYTdgFU4vOD5H+IBCmbVUOIeP4V9ayaR+aOqvPq4ela/eK89HZEI0Rb6LDmMGNsHLD+IFawSpRrHQIshHoeGgNsFtPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcehC5v1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcehC5v1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C03C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751169593;
	bh=rBIsT/W0YwBShDocSUejrBuoWOAR0OBlnEC9TKmIbV0=;
	h=To:Subject:From:Date:From;
	b=UcehC5v18FQLSE6ZAIdSZQR8tGF12W93sgdBpN3+f+t65sP2H7a5gO+CrhybT8hQM
	 U3eRd2etp86yWEj95SDxjSTDg9fT0A/gJTgF6cxnbyYEKTW5n3JkN1Z3S2PsDm2lkv
	 HPYH5SQq8+dJ+nJGtVmMLBUgktYFvE1ZpBqbaBQ2XjwydG3TvnCfRDkstQli5QA5tb
	 DzEss4W7juqKfRpF6RKgRU4XGo81VCoJZmFjA4HuhqVRX3PJhvFkK07sNmq+vib1oy
	 jgmlbVUnMGkQ+8let8fU+mhDQfzaAohLWiAgg/aCS0M/bouuoWZS2m3c7giM37zbXe
	 HIqkNMU2CFXiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9270AC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175116959357.20992.12879321472008442500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78330577af7acc2bba53d96944dd497c9cbdf290aa42d381880d22a088862782
Date: Sun, 29 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751169593
