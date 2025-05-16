Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458C1163
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747388395; cv=none; b=V9dhFyMn7jABdZU+ZRh7AVRATpbloQriAtzLarBpuVuVJHW3hcHFttP3gYx0rEBGzC9yr46OvF/cgTJACeG50eQw4S+tOuBN0WaHaQDPLCEtFxE2+5LHjehUBJ0CNCPhodrYNSrOFhJth8wgmAVYNFRiauWNNYRUXfW839GSvZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747388395; c=relaxed/simple;
	bh=g8Ewn3j9CDjNkoVf1BpM8MjUlOacvb07ahx9P7wTYEY=;
	h=To:Subject:From:Message-Id:Date; b=bFSot+EWa0mLWRObETVvmQdnpFZ+8S7J+Us3txs0h55u3k+qloUjxz2yVyFzEfeSyjZrjPqARexGesxYyrA66P5DVHiTv8oUDRBjdXX5CUV4hVn57PnarRunYQKab2RyQxEFkep3GQg0ZFaoY20I9D1YS0WQO+j0whIbkWlY58M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljcIA962; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljcIA962"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8203C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747388393;
	bh=g8Ewn3j9CDjNkoVf1BpM8MjUlOacvb07ahx9P7wTYEY=;
	h=To:Subject:From:Date:From;
	b=ljcIA9629HA+gillPo2kTdg/Fw1K9dICVBruz74cx7lKd+UQNHMywjqUl9WtChxUS
	 nECEfyBOdKbiKz/VcLvyaLt3ULZf9cPYlJ8sj6IWXycsOF0O0nvjCZRCmZlJc8DmTr
	 iZujMOVvEWmPkNB2/DyFc6rqacjBlWqcF7hWuKG6+Q7FgifJIG82va+Jhq34uKRJVk
	 DzZWikYQ+i5slxEyyhUZ51LkfHXrSXsNyLzMUy6av5elsjUbRNsYXvk8NV29JOaUzU
	 MAEt/3wVCEqEwWbgBb5eh5z+Sl+osXjNd/3sRI2cOr+bC4vPpznS4Lb1PXTqJP7lnK
	 Phlrm/hdnvGJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95612C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174738839357.15131.8206959749117574966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d9896e5c931e910203932268fc99e02a44a9e4c974e35fce5b290330e920bcb
Date: Fri, 16 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747388393
