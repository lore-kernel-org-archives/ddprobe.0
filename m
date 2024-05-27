Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5995115EFA8
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716821663; cv=none; b=Eh0BP1ETX0JbitN3neKlI+5QzYv4VzzfYxvYRZZLMuqKMqMwxCelwL3fi5LEkFp8SSa2+HeY9PZ55GUJm5pt6K5MRcpoH1Sl9h8hBlzVhQJuYiTVGFeE7DlVkoOXWI7iigIqUFVFQn+8YdeSVgTgd2ej0l0B4luZRCKnL2X4msk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716821663; c=relaxed/simple;
	bh=saC6YqhVivkUV7aHiRrRVxbdK07EPGZRWCMrys096Mg=;
	h=To:Subject:From:Message-Id:Date; b=oVaxDUQbf7vcCSmi+hJot3LkuQSImKdvb8I2z7tW5afRO74RwJA8Hf0Buxc+ZXXVPXQcfjGN68axtm2yaUdOm79GeoUK/l9NnQMryvcF3RDXaUZ1mOC6+RIQf3UVZ4ufu2v9CMP7j/FjhUKEIfAwlUJqLfNStulCIxhpt+l5PZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hh1b2qhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hh1b2qhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F7FC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716821662;
	bh=saC6YqhVivkUV7aHiRrRVxbdK07EPGZRWCMrys096Mg=;
	h=To:Subject:From:Date:From;
	b=Hh1b2qhvDa1irO+VhqUR9UTCjvEGMRUZ0k7vkvHWHMksawnqyDARcHi+9ZU3caKJg
	 JaOc8iZzUP5uSx1zGL/BNKeuds02U8d4JgyEvArQYItHuMI/w2wq208qS5i7PPg/uH
	 jD9uWGVHYOnlyI5JAkDL5LtDJcvr9qQvDQG+tAhpAi8eUBETzv/eiUik8lSQfzDDBF
	 koWtRNnAGWW8f7OuN4+eiimixHIHaofUoegSkxGh5bh20m4JcJPZx9Z4Gndks0IhCB
	 Nk6MkZkxeQWmjdRO9Xgpe24U2erq1JL186nZzxGFu6ADAMqP49MDjc9xaNK2ixIgcg
	 g/bhft7ZGVBmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3625C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171682166278.23259.14707412326168610591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a20c5334a2058e50e17047a95f130de51ec7d7e8662579093e0d9027c88e0cb
Date: Mon, 27 May 2024 14:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716821662
