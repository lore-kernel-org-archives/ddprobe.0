Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5979B3E1D13
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783935514; cv=none; b=F4lzFqFPdsU7adXnPh10f5KZvL5+uUMDZ8cDWyo9XjQgBiQ0SU1+k8+4jcA9v1Mo10R5qbqcNO+RdeA+l9xzZ8JFhN4h09md6roPzblsB1ezXBjJIYa5LcwmZ6ssck7yiWYbJXsB6Ny91AUZ2F5OwzA2lh6DAAOtyVI243AAvUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783935514; c=relaxed/simple;
	bh=/upv3hm+tF6rCZ5LQbKs9KnrlN1E9C34tsXQNiFGPEQ=;
	h=To:Subject:From:Message-Id:Date; b=N7mEyDx302CtgJcNzzFLesVpkWcpIjcTKwzGZBmOOenP5p/qciTGU/j9X+rilspkNB+BB5S9qF9cEMQBqKW6UzJDghKFWXSKXqbawvTT7Fduvx7ul9fOMN9Hy9Vxb1Boc9FW4L84aDrjBd/SnD7Pcbqys7apcLXu1UJNVgseqnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K226WieS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K226WieS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC50C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783935513;
	bh=/upv3hm+tF6rCZ5LQbKs9KnrlN1E9C34tsXQNiFGPEQ=;
	h=To:Subject:From:Date:From;
	b=K226WieSgdkHHcua1QQe6G3vBYTZYQ9hugL9gKMzLUKowJQIDWua3UF0253hCUhK/
	 faW41cLVZ0WOPJWPja2cL70uVuFg3W/6iPNZTRP8Eddl9TDZapNHtI6hZ82VLkBMpW
	 /VLEZwvACpqvEEMZQCSzUoshHq18x+zaFZKUfnNxXuqwBvBrDDlVKATjnE9gEkAo23
	 3xN+Kl8IhY+iujiVZ6iPWKaEeoEpACccZnXj5RqvW2Q9HQiVYTdXwhNZZ02uQjMDvY
	 Xk3kgim0XLEX9kfQRTiKA+N7jpzZLEi8uWSgJaTlM/5DOedCC826JeKGyeaSL6x3ZB
	 OAGqfOAw8JERQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91E7C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393551368.29724.10095954026502379613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c11985f700b49d633a4aaa8edfe140eb991822c18d1fc562cd93df8a558ff7
Date: Mon, 13 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783935513
