Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B483A7821
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768940634; cv=none; b=Pke7RWNMH0wyK/jdqthNJAIKN4EXxUalwY1JjiG5Q7kH9uSO9xDYwBEvcJaKW2zoVYIF5a6eGD/G/z0KZk661DU1KJ9ni+H8P8fRJ/SB8PspqXAfKkxax7BFta3fH9JkRv/dymIbRMTXREU627oqmWbPSrG9oUFl8XyeAgYXO8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768940634; c=relaxed/simple;
	bh=/MUm/YPDgiGMJiTw42A6aQGGH1O1oYK5jTupJDpXllc=;
	h=To:Subject:From:Message-Id:Date; b=pbb05a4uNUzm7Bf2tAlfrxaLzXuOcyjw4/4tFD3XIjfu3j4FhJOkl/5uukwjkFyXWcy3FIeji855sXbcADsTHFqH6LQw2LnKgbUVJQ9m321ASF475Es5Ru/EmrwQqvNZr683l1pjoMEvV7a/Q+ehdWu6EKukIfq3V/jnoQ2RBAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoAMlVtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoAMlVtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2137C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768940633;
	bh=/MUm/YPDgiGMJiTw42A6aQGGH1O1oYK5jTupJDpXllc=;
	h=To:Subject:From:Date:From;
	b=AoAMlVtTF46LdDUJELlTZWGhJgW8+RllYwF6Tk3FYui3rGA+4lx+6FgvfzkXP/Gcq
	 fobzRDY+OZWNuzfW0VIDN9j96MbZuyrp7WEsdp8jNDX5hOCI+XdFzVh3QzZH62P5Zs
	 tQG0sM2TxtXXtxonk2jWGhdSi6xHrQkYCLBjZRiqKu5QW+tBOA6YOS0OqFynLerrK8
	 GlAPjYuAYrg7+lLhp/kI3NaRQ+bfuWBBJ3T/Rd1lSmveIdxbeHySeNCh3AxGEEFLB0
	 JtdH6lbtkmayZgKNxc+K/m8hrM16WB5kfyfEtwFW/5UQ3/km70u5vQndhYY3xxMVYt
	 3xEi0ULbOnFMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D8BD2629C
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176894063358.29616.16639587388652957207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e0fcbd89201692d7417cfb8381045cb0107be57d0bfb6d26bdcebee980e605
Date: Tue, 20 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768940633
