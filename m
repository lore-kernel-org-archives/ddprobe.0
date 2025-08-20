Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200C32367CF
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755653994; cv=none; b=TxZ7fUtT8IaHv4SzzleOYIW3nCJKOjiz2leyr3eUuwk3xL/n7xrfeyJRxXlhKujxwxlj2eOIaBLCKGqCZshtVGKpHEeDtVoJdpNtOGXNLjxTguOQsGT8ERkiGZUCqVgmf21x02HSC8gXXsrrLdLJ1vDcZR57re6J1GgxJY8G0y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755653994; c=relaxed/simple;
	bh=OD1NaE4I/GWZGlCLlPlcsmR+fJTklRo08FnsqaEnjk4=;
	h=To:Subject:From:Message-Id:Date; b=CIocQWDs4e4RhoyPn16gx9ATbipEDh5zyuOybt0WP6haDd+g9tLAhvo4yBW2LgzysQhAiKy2+g079iq8tlMqpWFlb/GiwBSDgeGEaUIqGVYR674GCVq3/pu5cn891Qsr++wGEc0kdWXV4GLKaxwY0ggjDOoPUZOqn3qj4o5sImc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5BXzMUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5BXzMUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA03C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755653993;
	bh=OD1NaE4I/GWZGlCLlPlcsmR+fJTklRo08FnsqaEnjk4=;
	h=To:Subject:From:Date:From;
	b=f5BXzMUOrffbGPh2Ie3/KhAFpXOkmi6DiPPY72h9Si2+D5PezH8qtlmc8GQIzGViy
	 Uh/oPOgq8ELZKf4Jv/Nnaj2uZJ0CiMKhRC7Fn+1P4fR6CkLS+sgOwBlYSskm2MzEeX
	 HbJvVUMmyFpOXhHwTueJ4+7d51YmmjMGztkCiEXART3VSfb7M092U1dANguTtDNrB6
	 BBn0GGRzj15r95ibVNwUsAQT1imFdM4QpCP6gxHAefW5wiu1ImcG5pF1BRkFarxgKY
	 32MK8MVebnAlFD1W0mFyypmpZn7XQlK2yDeZKO1FWkXnzUF6f7chQ7KqA1NKEFC3ow
	 XmXTFzR3R+zJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6ECCA0EF8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565399357.29521.14277550481490407954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f9e67ba981d8efc047f19e634c5a876a4c091c1d1fb81c9e339f44e80961864
Date: Wed, 20 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755653993
