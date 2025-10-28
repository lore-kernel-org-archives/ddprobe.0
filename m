Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27ABC1AC44D
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761679194; cv=none; b=h3l9J8dc/a9y99zvWZNjWcFhMOJFJKVR23bzhPtnzkbQKLs5Bm6ZMWMGoNpJadQPxkCED4i+T4OCJnNn7EckeAXH3gGJHkoPhypiWwGlAK0hPN2iOR16yQbaq8umkCEbHtsNfdQm5aO1lliEqG8zSktX5Dlz2Fz5LqyR87g0flg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761679194; c=relaxed/simple;
	bh=UF7MvyzjN53fAkG/xrCwHe4OfQiKMw5DwnOxdyBQ2Ow=;
	h=To:Subject:From:Message-Id:Date; b=CC7tSWcecSkwTLvu/yfffnAOoJJE6rCtxFeevyN1WVv0wLjOZTlXWFvF0oa72muJbXwqPAK+mwZZILYpOmbaPEVg9qdSFeq7Wo6CEP1FKFTDCkaHpqWQG2MqW4Jy8LANw3LjThnGZajS+4BzfnGjoxnYvVNLX0N6QCOV2uZYTPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMGz9naX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMGz9naX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CB7C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761679193;
	bh=UF7MvyzjN53fAkG/xrCwHe4OfQiKMw5DwnOxdyBQ2Ow=;
	h=To:Subject:From:Date:From;
	b=TMGz9naXIvomvJ6LU+XyI6L0WWOZNjBghlpyw5RMhIOjMxMjRP9BnKe0C49OB/5zL
	 x/9DlAypNpgu3M9HoImzddrA9ftKrSD8PDJuFFcznmIfD9uuAOhhhGp550jdLge/1O
	 ftV7hEF/6Tdn6w/dRuaZvXP+ud+m8Ohx6iLWf2ycE6ffGmjWRWQ73y1DT+9/9Id740
	 7bkB5KUaTMNBfwKCOzzQom6lfvvoJOo8KOyPn9N6LRgIHi6SnuMtYVSzbMu9iFbydv
	 2l5daHVazy+0739puXl0LIsIUDCh2OWOiBKWR/YEQ2kcqN+1H0z6pnvsJwfUzX5GEd
	 9O7FrEkvyzvbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960AECCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167919358.14283.15101113317784678190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d599deb2a1ab6408c14087c1fbdf2dab12b1abc75cab8f78be0af3d6056bfac
Date: Tue, 28 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761679193
