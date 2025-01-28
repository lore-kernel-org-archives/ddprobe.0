Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83806199FAB
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738071954; cv=none; b=DGd41ZRm0PDye+0L43A5YX6/0tVCRzBppvFBAuDDQ4A9fGX3zI+k0hih1trJQ27rCk2D3rfXp8di8oFEOYuRgZ+nWIRgQk0SUv6Ze1cYiqH/5gXNXNV9xuZdXy122SharL26A5bIT5zL4ZybJXx/lFYTxN+OnjRIrqs9mNPJtok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738071954; c=relaxed/simple;
	bh=E6PuGxINY+9hAedxe6aKW1nO0YD28bwE/1271AowCU0=;
	h=To:Subject:From:Message-Id:Date; b=Azvnty5dnkBgMExaAJU8+0ID+qVKcCCVx7pmnM3yFy9HWO1/hxl/xGLlX4uYfqmV25wuuuztxoLbHDSgxtsBQu4xLXqlVN1dKK63fNml5HVpMe4Rj+BiSv5Vn7UiUl4jsLhfG6x9+AdInI96q6Mzmym/CI9YUshvLbIINZgiA2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hlGu4eqD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hlGu4eqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C35A3C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738071953;
	bh=E6PuGxINY+9hAedxe6aKW1nO0YD28bwE/1271AowCU0=;
	h=To:Subject:From:Date:From;
	b=hlGu4eqDICDFl2BlZ34FqTsQD+eUSepMOKQG0qUKSigm09HW8sQKDmJWXJ/5iEE8Q
	 lDSO18I2L+yuH0eu2Hs3xw7TqcZ2KrBzz0wCDxCl2/IXbMvbYwJtbWOf5IZ7ej9MbO
	 ASmnzD6ej8nluKVFjMjUZ3dgsOWHQE6Iotb2y2cuoJKRlTvrRGqa+EnBYi7sQ3zM5s
	 Bp9iCTQOZnc1p67fmackbYdsr4u7DlbMoOhNXidQt5e5SC5DG59/TIrtnO/GhcGC71
	 5d/JIb91r7CaCHiyC7uBARaEverQsuJGFPsZzX0mJOKpFYA/MuORvtnWxbpou0d9jY
	 r/5ad1FhDr+iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3C6C0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173807195368.13973.7870837023368339213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b8b1f9bfc15619792c90f883e74d0474e2d8a73d4940994cca330e971eaa905
Date: Tue, 28 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738071953
