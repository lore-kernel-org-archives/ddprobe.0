Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127F02E0413
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766495634; cv=none; b=geZ+EkVz6d3zn5G5M46spGelO27SQDLIa//cRnqN9yYzaAeMBZRJFSRYnw9N18Y14L1NtMyjlkcgEtWPYpQ2+Vyhvt6MSNeyOz/WSr7bnROEE64rvfkTAD4xgyuEsNm/qrkDAEKbwtsVijfED3n4dCtwlq46QY7m85AS+BBrx6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766495634; c=relaxed/simple;
	bh=oLwSG7mxnKvjy9CkOOXpsR4FzKjobDwtFZ5uk9/AgaY=;
	h=To:Subject:From:Message-Id:Date; b=U2xwU/vSPKp6LDZECYlF139RVD6bfspGqou9G0DuREegPmFI8YSltgq+N/QBlxKAeECq33RbqjWQsg9wydlKx79RaMNBcWQka1mcGvuuFNaGccCeK51YRnrpJ9dgdOFaCr47XLdm6+8TQXfYeamsZqym9gWYV8uZUuFdmDOrcw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4tvNPq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4tvNPq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26A6C116C6
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766495633;
	bh=oLwSG7mxnKvjy9CkOOXpsR4FzKjobDwtFZ5uk9/AgaY=;
	h=To:Subject:From:Date:From;
	b=M4tvNPq6DnWhStxZinfTKPRnGBtmFxLR3rWhqWcVSkYIB4akXh5pL1H2oqcebH9ye
	 HlrFhbmPxfO0YD6mQ31jMmvSRJCjMyaf4bxoFPRl4Ex5YOdUSBZtrAKW2M2tJGJ3r+
	 eU94DrnqeAvkp/MHRS/BXWDMoY+CHZI635P/uF6kF+juFe7OWQJHX4rQtQT5vIwlEi
	 +K5As4LvhacKpmayJH+pGAgZ/yrLAjLCk4/DOohKmeSrRmNA0FaTl3Wk7987D+e1jo
	 wkIp1ktgjLdYCt4WsuzU15duJKAq00lOjaeCiw62QL7GgqOQ88n7y4FSaA5EPMxv9E
	 8/p5NdJSbC35g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B39E6F08C
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649563357.2110.15730272486232574739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0532efbd0bf6c33dfc307c0c19464133434d776ae26e401e54056b2485946467
Date: Tue, 23 Dec 2025 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766495633
