Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3501F2119
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735761354; cv=none; b=RNqUFtyqLySW8vWNuyPiE4CFjx13J7sZDjVX8hwZGc6rBC5Kyh4DFt52biKBAmnfXv4ZoGeuOt5XjNwVHh5FkkB00EPmNLdgrK+xovdJVL7I6Gl75HYga4zJkZ/S88nFLaFY0ZnYRK0lEl0jvCEWMNwCT8jtmtA80ExRpE8pyLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735761354; c=relaxed/simple;
	bh=85VdV20nz3yJBX9Tz0Yd0B+rgUg9av4+Ma6HO4+NZI8=;
	h=To:Subject:From:Message-Id:Date; b=ivElt/zxlg0B/+fHL91ep3QcUrFjmYJmtC2Ag7uP+PXDxojxSfj3zF/oIQDaBIxjrJvSrSyjvBGNds8O5jP0H8Q+YbiGP3wugWIyobIegg0y04MZLfBeT4g6lRA+VATLZcP6NBcJ3+RhH+FiaTbZuRaJYwp2udhLyO8NblAoMkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBwrwldk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBwrwldk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD382C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735761353;
	bh=85VdV20nz3yJBX9Tz0Yd0B+rgUg9av4+Ma6HO4+NZI8=;
	h=To:Subject:From:Date:From;
	b=pBwrwldkOBHAQpasTjN14e/nsCzqy09bRPwzUj5Fij4NOU7j7olEHqCAEZbq6tfc0
	 YoSN9Yjpc1LusZKvMbPQE255Pp070l6vtzA38QR0QPwT5LI6l4PbPoIHcE6xMmEjzc
	 PrcNfqTGH78dkB3URkuSZPc1llWBxezH47esgYoHJln5Pn6SIOXxa6SgzTwPbfmdRg
	 4vIo8j439N/RyUJb4OjoEx6/55JKs90EPFOXtkkGhdnHL3Z96zJdXoWq6XGQi53zKl
	 8Ot2Vac8wSWJGlAM69eTefBBxomMUbvJhblrTJM/1hA0llrwji+o9rsuhrekclcMza
	 j4f/yPxklWidA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E5AE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173576135359.11576.9764155295330331636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e19d0bc5ecaad49a1708f0076b59fa52b1dce823140c66f1a3994fc76046fc6b
Date: Wed, 01 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735761353
