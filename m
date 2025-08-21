Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211F32E173D
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755791394; cv=none; b=SvDq3LthWcdwsxLuKeSSWPzxJgOHch+bARgL9DWk922A3Sc2UIc3uxIGMJJoe/9rqo9AsuaBWmd/0E+JvtgZtk4rxoNZCrJZGtbA/7jlo9X6DcdbBdGlj4f7Q8VIjaag7Uhdev8F3kSzCk+rjXj0aYrPNSepG34xTMNkiwczH/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755791394; c=relaxed/simple;
	bh=KG6zIYbWF+VyAiinxi/MEVNYtXltWcRXIPqifCei9/Q=;
	h=To:Subject:From:Message-Id:Date; b=ho2lKEtp0dYN5ll1u53xeaDl8kBV3+J0i5cmx4YE3SR/gOK/Jk27E+Eu2LTR1WK546h/57QJ1dKwWgDCbQyDoja362crC5oq1HftLt8G80xYo1Y85FN7aATQOGjq/YK+uBHCekrynyzVGQqcHYtgNonr0nmx3T4iY4COFhwrRWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FA1JcVfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FA1JcVfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEB3C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755791393;
	bh=KG6zIYbWF+VyAiinxi/MEVNYtXltWcRXIPqifCei9/Q=;
	h=To:Subject:From:Date:From;
	b=FA1JcVfkuOfgo2ncdt+55UUjC4RgVJMZruH+Qo9dOGAt5C7+8CpGBjmLJe74CGWtG
	 FiMsmZNU80z1PsqahDcx8e5ScMs030dQtvpj0MqPoz7x1qXp/OQc4uz4MUeDpf1ZyL
	 km275geJDShIc1n7eu58NNnGI7aBuWrJWCLs6E9R+WQBGcU9BQzWcNCFlEk16GZ2Ii
	 jkKEZ32ZwJzskEetie5Ek3r2Y9lo0qm3mZSxGAEAJkMRhGWOJPpcMAQLy0J7/ibfwN
	 qoTqkewTS3Cki2B8ZuJ31HslY2J8GKb2xj8DbOr1ou8wGmY0hmYYJvutUNwyJGTt9b
	 4F8z76RDTxXzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2CDCA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579139357.27342.11657280212641427908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1904af9cd1a7f3de4b627f3cd5e24940559eca6c7dd6bc5ab7aba8ca21d3d837
Date: Thu, 21 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755791393
