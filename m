Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0DB2F12AB
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780157014; cv=none; b=DnlcLpZhQfcx1DJnMpIM86LRPm3eHZhrQZvW6pSGl/LupEJySx/4hlMZDmQy1lQuyhpL87Qnhg4g1VU2vNyrfd+hB7hDtfwUziqTVropFLuTT7kFQLt1/ljh698Iu+EGVht5YfEi8Zj2sZlrpwDmhUZ0Wo0jOaSdbVLTcIlJ4XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780157014; c=relaxed/simple;
	bh=T6KM64Q7Mfoh5NDliZ95P4hNxUvZEgrzl+DKriD/vNo=;
	h=To:Subject:From:Message-Id:Date; b=T3nQvQ9vKqceKJxPgnfZzf7FlhsHBLihdW48BpB9Cxz547g6OjiTfGZajiQ5RxSGIz9xXM0lGp57ySGxT5CFvUJcZ3lCqJxFMzEWxk95GfhdlVr3oiQP10Jy1taZOah2ngGJWstu7FuJvalfJl1G9gQkD8hJtuQcbDHhJEkb+QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXnJBjoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXnJBjoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C871EC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780157013;
	bh=T6KM64Q7Mfoh5NDliZ95P4hNxUvZEgrzl+DKriD/vNo=;
	h=To:Subject:From:Date:From;
	b=nXnJBjoJrhUoOBSVnwzS1iu4MN9fg/b3U6MxNTlkZVLap2dZG+uPrYNmdLGiZ7oi2
	 zhnBw7Rd8PsIchmXXRVdLdTGUTkoftauKcWC0/s3Z2OiWbWKVHklZsbRdJmQgO+woC
	 c6DI6imdw18Z8gQpu8bkC+a0smfHcNNlLvgluFyxcUHYMUACztv0Ou9T5eofsAN1OY
	 e9WvCYGEhzm/uYvXr+sEioy53UAKTazV8UzW8HNUDJDno1/BRjUVjCxbfmoi6DLN3v
	 IIjes8nklPw8zgkhgwX62bqaO5LJodYnKmkRgcF6kR/41G9ycBXpgnA7SjqUc4xEhx
	 qauJqvZv7QXKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C7ACD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178015701369.12196.519038923060697248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7311cfd939ca9f59cad5483bae78ff6ffee2a9f359b814a2b05ebe438e8ac0c6
Date: Sat, 30 May 2026 16:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780157013
