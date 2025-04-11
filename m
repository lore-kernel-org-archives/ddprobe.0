Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F75A6AA7
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744366196; cv=none; b=TVVJfc8SOCLEaqR+WkKMgz/lxriblsHLLeTjmGTssQEX4JxIyXS3+j8O3yr4QvAgVYmYbjf8u7usAjn65VZzTij0jq3xHWWFFHsibmZZgZLZPoGBdnPQERa7Wo3B9WMvOQ4FbWhDo1yaX12ldGauooZo6VoAUNq3sgYjTDqKlmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744366196; c=relaxed/simple;
	bh=q+A05+lyZhmTaIm8l67cotbDoshGVhHZxHOHBpq2Nc0=;
	h=To:Subject:From:Message-Id:Date; b=spsWG3XDtCpmie3fv7+Bu2i4pJrTM1kDoi30hGBYxx/OAEWo5HoaeaWoPLxLFsRcSLcMuBcoTrafv3r8+Vmtqo70TZY4A7HlvrWsbJAlzKLCpJz16k8AZ6ZF2w6UXJAH2ossQsGIWNu1oFIwSN8vE4z9+LpC3d/i0fgsAv1EgsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEWRrTf9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEWRrTf9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4DCC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744366193;
	bh=q+A05+lyZhmTaIm8l67cotbDoshGVhHZxHOHBpq2Nc0=;
	h=To:Subject:From:Date:From;
	b=lEWRrTf9REAS/3+G+2Aq7vbuO7gySc8k/UDGoKGRqQx3RPRecJgqVu5xBn4/vpVmm
	 zXf17b3aQdzzZKuOMCpaQ8OK0Xf6h2XOOLO31gsx/DmwkC2w/PZ8yhG+WCT5eQFLqL
	 vqBa9vmY8AJ6MwiWUjEs8d/wTX2mWvSZJMIVCLAUmbwXtGxqPH91GxmIjWF2mRglj3
	 mlJl2mp7k3RL8CKv1bjc+5enKDAa4ovTGCV+uH3dlS4R8QPQA9t3nLSPWYFLIFPKaf
	 gQ+0ghbwi3N6J6lFwYJqqYV71H0qqjj65U3fF0rxU4zVnQWyiDi7N+ZzKEU/oCPoNc
	 zI0FTyVwzAY1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96734C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174436619360.8664.14487211344129329743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a63610f392b7d22e5a079ebc7d4309fada09202c592a7f1aef1cc453640fc8
Date: Fri, 11 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744366193
