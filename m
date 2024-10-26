Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D67F29CE5
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729925754; cv=none; b=oiLkFEUprRJwf7JmevlGpAtYjnzwAfip4LXRbY6kLG0W/lLM6v40MEf9RwnTd8fZP9FN4bE4hAlB/V/8ZVxsZLUWBicbct2g3SN9e5QXjPzldkRDVUUnS9B6wVzy1bfa+bHp4ZcStCb6S7SIXmo7oRYXWrsH2aWtlxc6i6N1YVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729925754; c=relaxed/simple;
	bh=/9AHZUHN7e26IU++VioZ8CYgGAVPTUPyJzijFcgpWZM=;
	h=To:Subject:From:Message-Id:Date; b=qLsQkExH+sE7KUOzCCKcaZFyqUCECzEGdlnzipuaMCg7xLIwd6Ov3qRuQqZkUk8FGYbH1ivEHT9NAgg2ExoEuLDi12hTiB0AsNXol7RfMgd5lPkkDsMV/GKiF0wsZ8EYuthYspK4o/CP5uhlEqxE5E3D+85qj+IljU+CVdPcOjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPsLCofg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPsLCofg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B554EC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729925753;
	bh=/9AHZUHN7e26IU++VioZ8CYgGAVPTUPyJzijFcgpWZM=;
	h=To:Subject:From:Date:From;
	b=tPsLCofg7znXv+DLX0tRIeLoM76WYsoKusTnXS8a00N1SMhHVyt1zulG59gITv1U9
	 79UNYiAeQVKgeKTFekC/20MbK/XZMEfvzU6wYmcsAK/5hed5fks/Pzq+xjzNmvYTFq
	 eSnJKqrPw0m/fR90392PFAifkdD5a0+7o7kJpEQ/SgrEnimlLKDANBdCl5lDKAXXB0
	 sJ0gBDa6n4Sp07dAHuEQQ/LhJ2Ri2anjvsxSn+SwlSgjEiXHFLNHfENddIWhTiowBe
	 SVXHJleOQ15OnqriOfulAUQrqacY01FJkFeAqbm/fJ4FpGOTK00phggT0NRzRZa/Af
	 mjUbtWMKygJZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C660D10BE3
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172992575363.9706.8009337126347210104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5e8897b03e19c7278d5ca162a76e42f4e4d012fce2d036d3972a6d953dfd36
Date: Sat, 26 Oct 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729925753
