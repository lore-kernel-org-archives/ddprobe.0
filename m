Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACC535AC00
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782188794; cv=none; b=YpmJIf/PD1h8+cK2B+7ALp2kH8/3jd8I7qX/dCtdKFxmGnVEKHjSCk9nUT7y56QWz8oG52tnkoJtRORln+mkDicmndvpAc9vPrnL73Vi8Whk/S4IV8brENhX5v5uVFo6Bc6MqxDa3iybW7s2DWOi7em9CWDFRRNEdSr6Nv/DY6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782188794; c=relaxed/simple;
	bh=U3/AXLJ2srNGyc3/EjM8uVFCo+rcHA2nuPe5zcrDt7Y=;
	h=To:Subject:From:Message-Id:Date; b=pk/pf6EkhWPwg7HxfS6XknL6ZaIo9AlJwN0P5EZb5RWJqeAtKRcDv0xQ1I+8b78U6c4J60eHA07Zn8Qj6c9w1esHniMLWyv0DSiwZ4Li853l0wJQMOismzY24poenD04qNdMbSukbkVcPN0MUwJfqLcvuBZ4ugy3kdC4lOjui1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K97pjCnK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K97pjCnK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE44BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782188793;
	bh=U3/AXLJ2srNGyc3/EjM8uVFCo+rcHA2nuPe5zcrDt7Y=;
	h=To:Subject:From:Date:From;
	b=K97pjCnKQ7ZGRjNsCd5QvN55gDauzDPuiHw+MOXgzM+sD1fMvRrZq6Z3lE91p0tpG
	 Nha9kwx6w+oKUl2kK5+M2u6LmXsx+jKdpVJrAOC9RhFg7j9h4quAxBNTchEoIS7daw
	 Ua15Czkc1+GtAQOE5YLqFBJUfnsIRic2dCMuG5DmYPJnilcia+DueTvm6JmXpVN7qI
	 3K/TKwfpcTKdX2vOHT+iLyErglBRBf95uPKdWtEuoTkzoMIBZ7l2msa4vq3OUsxSvh
	 5mmYKjsZJ+KAFTCa0bmrJwkjd+DnuojNdPJkUFc52cm+MUrV4INVdJvhqiImo7soMx
	 9uXAJV2hLASqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43DACD98F0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 04:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178218879372.30003.15945159735522866055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a88d1d86ab48dd8e0103567438c88e9d1363ca52a2512e7073aea74d80560ee2
Date: Tue, 23 Jun 2026 04:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782188793
