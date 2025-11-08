Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433FF3A8F7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762620594; cv=none; b=WL6U/E7+ov0GLQ5YVlVh4cULxcc87850125ielSrT0hUbdSstOgvfjkoVMIxR+/IYCB5tqZZsP6efCsDpfHmEoA4Wxt+zWSJ6rn1Y+qWFUIAHDqMlUtP/HtDh44/YjlXIzVPZbbV0XlDMKMx3OpiEH828Oefi3Sl7oXKOhtaGOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762620594; c=relaxed/simple;
	bh=//NITYNoHpBrEJ2XsNlNi0e9oh/x1z188NWoAjc5EFo=;
	h=To:Subject:From:Message-Id:Date; b=WwlRKZbmAX7nZAPmRt7++43k8Dj17oVa32t1++u5JOcBSm2MaI7QklhjwKazi89ovt/7fsCEAEd1/ER0eT+lM70XDP/FC7KlkJfGVrsqICDEf01jvGxUE8/9PkK/0DCrwyQfEnF3cw6VMXHUos66ABGPyEl7SsrrNmHkqQFnw5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRA995d9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRA995d9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7D6C19424
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762620593;
	bh=//NITYNoHpBrEJ2XsNlNi0e9oh/x1z188NWoAjc5EFo=;
	h=To:Subject:From:Date:From;
	b=oRA995d9Mo5EC1kqeoF/GfSKuSXWlwSTS3o1bDyNsGbHGFLJUhn9TM6MF6c01yANy
	 CBOqee0+d6pLZewNQvMiDeW/y5dalHUEwuWXgcBtp9arNVjOKnilX6oSfARSUZaaAD
	 fdMvXdpJDo08xYFhyFXosUb4O0X3Ia5WfJHH/5VuDnL9y0Jk07+AM7QP57CeGL2ra1
	 QPUcxVh2SRgOXuDY/nXp3uRbTRdt8R4KTP6JDDm/ICHczFU8/ud2QkXIuE0RBZaAmD
	 Wu2a6byMfH0oLUgDmIbGaiEcKl8BU/QYDiqPItd7kkwfNXjj20KQJbmvFxIwSLtgzR
	 /j8hS8RS06JJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AE6CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176262059357.21417.4472750639548591356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63852a6a05e8d6fc935e415f7d10eb9661917142be2cb1e65625ea99ad28487d
Date: Sat, 08 Nov 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762620593
