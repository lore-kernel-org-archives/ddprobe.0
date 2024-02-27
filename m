Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD976AB8
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708999097; cv=none; b=Y6fcqG+ADPQ/CSdsTQ2es/FuDdSMRM2QQQIOChn/mVbsEDZ3GrziHrLE8MnJu0NB1VpVe7mVf+RYiM6Z3lBd9on9isiMlqqzDabW4XGSAxTGMMgJJxGDpByuhNfJAJZZ26ewa3j6p/8E93ZLkVGWFoVVaR+4dtL3YvjtxYiDdH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708999097; c=relaxed/simple;
	bh=/8xyM577FokF8F5lmIKJOewKc+heJijROcb1yGz0W3U=;
	h=To:Subject:From:Message-Id:Date; b=kjbjRES9E/uEbcfUQh2+TyQAMyRFmSPEi2wcxmlm+eXjGoRPzC2ZF7tGa9uj/fmfJOI3FQPsBVBVuNebgAe94P+uYpILKaAe2cHIhXvoFZD7dSu8OAQJmXB+rLQ3AJmFY8JsbNyePJLxmkAZXWfVCk2TFqLcOn3tnhSPIUOaA6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yy5noanG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yy5noanG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8499CC433F1
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708999096;
	bh=/8xyM577FokF8F5lmIKJOewKc+heJijROcb1yGz0W3U=;
	h=To:Subject:From:Date:From;
	b=Yy5noanGRBFxNR8L9wCxMP2A9oAawjJp+TLgDb0HBM5T3buk+SObagiz2irLoexOv
	 60AZxCpmSYCKf+wgsB9ujElGrvHsBtkggCkF66quIx4L3iSDUr5NU/KsLisB8fC3W7
	 fQCOajISq6BBF7mGA15GnoKqtGjDAPsvtWe+4v9284tA9ExO6D55DZVeMPN1QizJqv
	 Y2rsjdh4OZPLUDizb+V+udnCnBpCJ9VySNNqZ4GsZfgunt64GedLlCc07osSWcFB5H
	 ZRz5/PkRf0OKVEVScwCRQfhikc+0wINC00Bd4KVdMBFotdYWb/ttZycnu9hhLwbwas
	 pYFckvNf2WokA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68403C5478C
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170899909641.6083.17426623186539833027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a25517053eb8d12a82cc8623e9125aa00c424ee6e6691c72d746fa312be04c52
Date: Tue, 27 Feb 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708999096
