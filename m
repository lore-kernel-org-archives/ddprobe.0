Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29189330B01
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785933034; cv=none; b=A7suqZRH7dbTcoyZaGhaTGtrcUuh3fqARzo3rascjKRgfyPHBK0tGvcwiEUkNWWFxxsYwxdeGWQYOSakZ3EgR14fzprXZWmnjmYJZ+xQZCaqqm7H8dafLVO4BwpO9Hp9zxj+uQ8DNr7ypzVnrTd5WmlIhMqah54YDpjEtS8UPxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785933034; c=relaxed/simple;
	bh=RcAodVEch+ET7tLIuSBvdW2sSCk9HSUBiR5UeDPOvFo=;
	h=To:Subject:From:Message-Id:Date; b=snNX/E5Q6U4bA4Fi57wxDYxSseSqa9xkJGW1+ose+ua17nKCtF9CVSihp/4sR7N2Xt5MuYPpmfgMo2J41P7xJEthN2wqeimCYR6eH2igx3ceIFRyLQk6g9yZsVrexQuKA0hIlYWDuvjdkvIaSsOOzkyDoiJ4Ii9kHZeNX7mIb1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGvb5Ca0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGvb5Ca0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC45C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785933033;
	bh=RcAodVEch+ET7tLIuSBvdW2sSCk9HSUBiR5UeDPOvFo=;
	h=To:Subject:From:Date:From;
	b=PGvb5Ca0m9ModWiNw07h4PmW40xRh8W0xjIzuEX+z/ZkYpaPrgrdVbTCrQ28a6Kin
	 s1eq1uUZ1hJEiH1uwa0Kj6IZ454x2sJZzbhYXhv8w2k909o/gij+VDU+wJNfoaQFC+
	 ep3iyO+Wy0CCocH4hPhILhAg3zSoZpJ7rRjia74isBeG9Du2slQ/1F/ZfbW4O7SNtS
	 tHO9cpCm4rXQLkZeR66299TJjoh75BDKzgG5VHIm6Avdtii+rfdRnjyEDGHg0ma0Xn
	 n1Z45wB1OuowQSugYIgrQcyKvIb+2+AK9O5lQYQY7/QqILmS7aVNvbt5K5d2Ltwc3l
	 LV5E4Vv+ASBdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF82C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593303369.659.11410037224051811136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888e43c59f381ce95a3ebafaa64290c88a2e905a803b6341f46bdcb4c2a04f99
Date: Wed, 05 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785933033
