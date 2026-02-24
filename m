Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E2E29AB05
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771915494; cv=none; b=NEoyynWwk7uQpeWmLgUMaNSgFNbE8/2i10QahFcoq5/78kvVOa9HTrV2LqAXWwOAb1HXLckS+P8sRBQfDCa0ARl+uhHpIuy/Bf1o6cOwuD7S7XyuaG40vnZkEvMMFI7O9gZnX0oSPwOdJ6T3RNp+8ZCYpEEkKjI0W0qh1PuPzAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771915494; c=relaxed/simple;
	bh=8NXehRNuFxd5GFInAUxegLH8NV5w7WUIaBD62lvq+Pc=;
	h=To:Subject:From:Message-Id:Date; b=egCX7KaeAEXH7flHJBYeK3WJlQG/Jtq2lorSh5xXsTHuKpecsKJpIjNFsjIggnSocqp4PCrC4T0+tS3qT6QsrMhvJOlOeKFKT3l5U4MpzlhNdYfSbA+qVSeVNOkJ3z3rNzOyxUwF5vS6yp+U8xmc7hnhS3UQomlCV3QMWGkugqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pf+As5/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pf+As5/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1943C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771915493;
	bh=8NXehRNuFxd5GFInAUxegLH8NV5w7WUIaBD62lvq+Pc=;
	h=To:Subject:From:Date:From;
	b=Pf+As5/fHJOF3EkZdYjISaSxx/GU9tIJ1bTWSoIheGfM/0W1JT99zi+4aSqBlfKdl
	 hvoEmeN46HzfocQ8ziM0ayl90NpVgA/U52tv+b1y42Q4J1uHjlbzt6XUxn3HcNgwEU
	 Q4TD8JzrNH+P9Ax5Dib5Gg6ztp49EiD94HHmoXNHSGVQJ02jOhohOC7NEHyrch+aWT
	 wvyLG2DYndXTLg6dsWm2MV7QEjc+spzm4cqCrgIKy7c2M/kvAcVSJRi1sgWcPuaaGJ
	 jHhMkVwx/vQLf8HNi0lz83fvowdwtK4h2p+AL1gOzOATJg3++olgsIRBcJjXAQd4Gm
	 HFOYbrt+RzwaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9815DEFB7F9
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191549358.5913.14318312962162727104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd2e406faedf0eefa4c267f7e7a53a3e5ba3156120ae512bb5d4bb72431ea35
Date: Tue, 24 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771915493
