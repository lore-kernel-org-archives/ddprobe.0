Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2946629D29F
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779740554; cv=none; b=dN5VCazhry3MibTsaDIRG8HhA26NbCEK9wjnmi6Hkq11ro8K3TbpcL9QtLqSx1jCHnRFAWyY3ItNWy0oiOeq8kCNkrcql9hzSUATXZJntgopn3fzWHRwfTbVAFYK7YA0GwRWsiArRKLJ1P1EsQEtkEJx26WxdcKTVbkzgTf7lYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779740554; c=relaxed/simple;
	bh=j7vwjNN8Rj5lxglxXlsoiTizVaIo2RxBy2eLe8L0IYg=;
	h=To:Subject:From:Message-Id:Date; b=ob9x+G3wgSkRbHjgPABqItvs0EuYcCxRPC5zmzyzMH3jfO9EaAHlAn/ynnZ+1d/QGCICZOnkv9PqpRjIsuej+55cYN750ym49w2BkYLe9dNtuIfNI7ryRa0J9m1thaGDTwxXdqGg9DnfW7ehDjJu4QTnChda6c9zPGbE2kM46VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7bfTZPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7bfTZPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C007EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779740553;
	bh=j7vwjNN8Rj5lxglxXlsoiTizVaIo2RxBy2eLe8L0IYg=;
	h=To:Subject:From:Date:From;
	b=N7bfTZPTS9S/LgNsIQRT0pTQ9/RuE6eIJaxMA0A4tn9Gfmt77+GAMU96mOd9QIe43
	 JQUgJkgngAz7wX1j0tUKb4bLsTyz+OcTNGjgLnT/BMI7htabgLA3NpU4HXXv+Jgpm8
	 QaaEj0tNiP6YzbLv77ILZR+MPFhRasaKvS1Lf+VFHvAMyjYQSi/Z5YnQJ9tbiZmb/b
	 BqKakYqgZFCZC/H8jWm5IA+Jt4AatfykqeTLTywb4ALPvaTgZuw5QY3fv13fh9dXLv
	 S6B+ItHCnAQjhQIc2MYfKv4SPrGqGJl1C32/ACu6eaKSZpU3eSnOCGDgOx6b/hFqtw
	 WXvDJgHA2xOFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E5DCD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 20:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177974055368.21500.222488521958819720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3823b320b0b9ae32f965a6cd880be383b4fcbcd45d77f2f69c8bdc43fb9c615
Date: Mon, 25 May 2026 20:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779740553
