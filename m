Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6BA1BF37
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746061194; cv=none; b=BMVsc9MM7147ub45V3c8k8bcMAD/cDx6ytaMG4y//66A+7qktnBV4XHZgkOm0f7/9mupu3WeYUOKLgMuyXeoCW6/+aY7YB72hCcJNc/0TWL2V0QAVNVPh8uMLnJzVXFsM3Etz5gzmTfvQlu1ok3iKfmgCSgg6qtaqrLWhEMaDXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746061194; c=relaxed/simple;
	bh=75BkY7dwRqN4PwEJEgB8Ej0tkvP5z0s/16n1Uh76Fjg=;
	h=To:Subject:From:Message-Id:Date; b=HBRuD9jHHE5MSPRUp3dmvfUI5R82aRrHLG2D63DBfbIAJ58HVGHhagKzQnJA7d2kjUhABxJ7R23E4LbFB8SyPKMEZ2NAxObrcr5Sb7AUJzwttb3ao0AyYITUabsher6N0cYg6VX1jl/7ON1IHlpK6t/0tHUf77gIHhqrsejKhBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIN5Fvw0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIN5Fvw0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E70C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746061193;
	bh=75BkY7dwRqN4PwEJEgB8Ej0tkvP5z0s/16n1Uh76Fjg=;
	h=To:Subject:From:Date:From;
	b=cIN5Fvw0+/3GTb7M+oRXGHmNOaycuEQesSOOcOnSrarob1nHLVGDrVuV5KeuxSXNG
	 xYPCA30HIiZrryVZ+GTslefng3MbvTxlxAuLTTft2bQbVC2wUxb8w9ZTsPlOVwKuZ4
	 D6zKY6nPkexWRWN1S+D4D3jt3Q5bbdZlYZT1Ry1ILOh2/Dd3ApuMreC9N6Z0RYILC9
	 78M6UB1vu+UlaBKslLFCYAGMQT3kTxOUkkcMHzA/LWC9BzKfBxj2yCbLsp05mTfT2s
	 i1oTxqJp1uVfQR6/bp277ROnmFuXHYwqA2VrnTmx1VoV8sCXEoOv7MDoVq6BNes54d
	 ZXzNckFpoK5Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C11C369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174606119357.24233.3207181703510094029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf217f2ab4f830e6c6b310926c7fc9b54de2c696741ef268a1dd0d19c246a98
Date: Thu, 01 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746061193
