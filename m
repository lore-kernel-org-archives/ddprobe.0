Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C847A1E5720
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728645353; cv=none; b=IjUZ6afiOgbgZSqERPMYUyYD5kq0CrlA3c4halO3IgeQV11hnC5uluw+sL2l03uJzKXjh+j4ZSUQrhgrPyOlKaWHa9yWVmRHe7nrLYijRyIJ1Jf1KC0hmXdB8FyjSeSdTPQZLHhuhfFQIgfydu8Ic0IZ8BumB7Ypn93UQxFeQqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728645353; c=relaxed/simple;
	bh=Bd9HdimA0sDmM3DpDMCeCcoZxa9ECBLfoXJzdpLufCs=;
	h=To:Subject:From:Message-Id:Date; b=HaqpFbeLEm4+VxtPd7LXnYrd+xjwTh4ILd1LI2hggL3qz4BS5amSrtuLsHH3BZiMHO3XL6CnSJlrYAoiWIZG2qYOBChWalGy19SqIFCcD/nWZznCAwCZGGonPy4Z7VZ08lIZps09ATvhDlVuMGQ5kY+ATyDgAglf9QZ1r2SNcN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hM1Obyea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hM1Obyea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9759C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728645353;
	bh=Bd9HdimA0sDmM3DpDMCeCcoZxa9ECBLfoXJzdpLufCs=;
	h=To:Subject:From:Date:From;
	b=hM1ObyeaDzRGDajvCPPa0V0NevFhtfKnunxGePHsFsbhaTM9zsnBFkN07dXe7t6PR
	 YAIk4q2iZhMysbAHRw1nL/PThyZL+VvT6BSZ1TtuBHCHBYevcDAukARnzB/+lm98NO
	 VMV93EAoXCq1YwdhaD8Y98kEmrECDDT119X/LtWwp4EWtDghr1fEdGELB7odI/XAxQ
	 EQY1oy+av/8xYXi7QxyFDg6lL0MZLgOYpYBI75GiNwikq3uoqGaMmo9/nINYnX2d1A
	 ot7gJbNk0zYjN08QBfCqOXp75ONTig7lINotnAFd9WMADIplcqcONEBQaWREBcsyUu
	 jluBJ+W4MB27g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F6CFD342
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172864535359.19994.14380415680304061952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcd91f2cfa9da195aea31747d21ddb1e0905d188c17e120ebadac915ef4bebca
Date: Fri, 11 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728645353
