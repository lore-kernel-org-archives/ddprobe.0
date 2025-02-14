Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AF9263C62
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739537934; cv=none; b=tbpOZ4lZqLczdDl3s1a/vzcQnOj2DfAOMQOXl8blhxtAKcyMDxeLT5j7oCerXsuq5u0GMPUTMzu5Myi7U0UjHx71CQQTk7YQ9GvFaccdkC8n8VzL6ji52O5ByWzXtdxS07EHN3PTHPtDREKsDsP8bfqky+cW1/bAGehGOQhM8IE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739537934; c=relaxed/simple;
	bh=FWdLt27NK5igurgAYT3jWerJnaFbWcQNXgD82r8rjnc=;
	h=To:Subject:From:Message-Id:Date; b=Vmd8YT8DZ6wGm5qCYRpWaZCWT7vEp9hVyZzAmxeCuYDlmvbbFie5iKcFf87W6+X+Snld65pC2TgQRiDiniSMXdsRiUGnPs3bKgqeFxc9yTWwktqi5PzdvEnW0dOR3cEHm0Aayl7CzhJs1IxVs4yAfuRAKf14kglprxguJGhgUso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQ5nQwh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQ5nQwh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3999C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739537933;
	bh=FWdLt27NK5igurgAYT3jWerJnaFbWcQNXgD82r8rjnc=;
	h=To:Subject:From:Date:From;
	b=SQ5nQwh4eOqWWrbEm3WhNjTEoD/Xt7wvYTGTbCppNQuhwfSxBu/d3YT5NqZ3Jzoye
	 T1c11BVUvRONOmLVgq9Tp/bBtrmDJ2XgMLIUGFkZlwybTgpdAB5NjwGtRx8xbOxEBQ
	 0KFqPRjmszreNaXPcxupEyV5yox5Y97nQXT1PflzrjHEGWhhohbjH5jhSNsh11qD7H
	 4dGhC4KBjUzi5t7n31mO7HZZK/YyP+zfOeOKRRc5bk4RLRPQyjuPqXMV/aYHzXU255
	 ylB02wYI1MoIERCOa4bY93RUAZBE7Ve8TUCCawn7WuVyOPc4by6HerIvpuKPXqN79K
	 RfsbwGdMM7qgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943E4C02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 12:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173953793359.9064.13280980298132991245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3717f801eefde5788c626f087096087af5c15500badd22c735f4e9bfcc04ab3
Date: Fri, 14 Feb 2025 12:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739537933
