Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E30928EA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 01:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717204463; cv=none; b=N8M7+WVbDgCfXAHZjcogjXzM4gopOvdbO87V6phkWOMgWX4+FoGEDan+YMu/YzEj5zEidFVJKp9BJ60WTuCt1BDyuKP5w2JbDqHnheIdUmalBwH06mmw9QyICUoLJ4EE+7VvDVVi9TbN5jROFok+8fJG7SmzdlBfVsdjgaIJYxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717204463; c=relaxed/simple;
	bh=4ARcMiffzbUlkT1wA9VfMWkmZSAA/eJQ1302DpBcLlY=;
	h=To:Subject:From:Message-Id:Date; b=J84TyW2cENONXNoYSOuIiKl+Xbd/emrmCrjmKXCMG3yCmN8xNQY9er/2a+Gq8Q0nSdV4H80D7eDdxs5dNaHp01wf+XvrqEgjMzQPN9iKJ1jbfdot8BrNnCmRtpIK78LPHRWE/4oRfZ/QtlRMHAYh8OLTRG1j16itT9hQ72aHRPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNNFsKhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNNFsKhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0181BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 01:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717204463;
	bh=4ARcMiffzbUlkT1wA9VfMWkmZSAA/eJQ1302DpBcLlY=;
	h=To:Subject:From:Date:From;
	b=qNNFsKhAH8zBZVW/umXcrQYU8NlWOJ1iQyva6YXOE8F6J+x+rSfeQmB/vTdyubfF3
	 3pIO7GcmEXFI3ntS+utQhG219N96X/cUgtKjkyJzd4n+fV92D58pfklunlVAjuXeOr
	 sUTEFGJMjEHBfO7NkR9EW+7R4bCSKaq1eRmi8JIGc/vJPGOQBO55/2Ar+qPwlzHBz8
	 XXelMKvtIuEHIRUuG/weOAjFs/zeYVQqbjALPgVLpTfY7weZft1O9U1zyA+ypjVTwb
	 /1ll1HokXoT1SCThaQlnPc2plycHKNJz+7aepxKHESV6i/Dc0zgCgIK7boGx2bJ8+H
	 atKYsFMDti3OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDF91C25B75
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 01:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171720446287.13854.8173513655521683688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47ec3f6a550808892584e407e75490967f958c2b233ef731558406e2176e1b0
Date: Sat, 01 Jun 2024 01:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717204462
