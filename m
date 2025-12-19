Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B381192590
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766127234; cv=none; b=lgxsnp00VaNtG1DP+5xS8Bgd80ObjPuKQ9XW0uw+4/VnRCl/5SIUpnpZNXHX9atrmo39mZzkP9bG2/BrN1IpHrT7yNiToVzuxlwbPOOk+7NQvkLxQmTvXpmaktexeb3mzdeuDcVR4XiVLhtgvp6iSIH7N7bF5U9RUyysKeIezV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766127234; c=relaxed/simple;
	bh=Nh9Nd+G+dOsgd6HLGAqQdKDZBK5hg8ByBdoz4m3ILSQ=;
	h=To:Subject:From:Message-Id:Date; b=O/IpByaUhlNdkEH+UJq0oRruqw/rIWISpzIdqVzoWwb3xQLsBCdFAIsWeH961MlgEc9NScFIjqxwE5VgMnYLqI6AwgSBliJL0kldyqd8yMRBEa64ri6Bn6Y3jthLd3egedxGT7Y3nEQXQ+rNo/ZITZWk7PcYnuYPcddOtFU6hOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkSwkKQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkSwkKQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DABEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766127233;
	bh=Nh9Nd+G+dOsgd6HLGAqQdKDZBK5hg8ByBdoz4m3ILSQ=;
	h=To:Subject:From:Date:From;
	b=AkSwkKQjMQxtjBo5oy/hA34nwLUNLTMT8b0Y/UacoBgvUKupeoQI4RzK7Cc8oRvJZ
	 f+LQgvyvRVIIU6e7TFOQnagjMj/jBwjbLEyKxGCNTqnajgqBFaPcNLZHyDlsT+cv4x
	 Za9xKVi4zvdb2MGCVE+lBDVl00Xe0xyZU0pJKchs5wiP9GNf5qKMIKaJUBx3ZE+wRt
	 MkVhmsWQu4vv2i13TN/TmscC+sJsFj1aBkScdfG5ldsApb0Pj2JPGqABYxQtoFBr2s
	 jqxere7yo92sFNAJlQe/Dt1N5RBcpBp7/SwFGnHJsr4V6ouwaxqnLhZIrTPH4y9Gi0
	 HIAna8a5Y+MyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F72ED7495A
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176612723358.5872.2537220576075534078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a4119419b18bb78de1f1fc2a632ba28e8b3e598be8cd9b36033ff7b5d24a69
Date: Fri, 19 Dec 2025 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766127233
