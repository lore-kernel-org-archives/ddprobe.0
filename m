Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EA14C7C
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734347754; cv=none; b=Pm9EarlyXGGk4nwfXlmKFAjUUn6yQfJH0E6fFJw2ZS0eFaY5LQqZRSTeMGoMJ0iY5LQfTgDqXgkztshRsj3BFEjzXIM832BfXMj/Pc/TBLfF+/VxLZ0y4Q4dOgzs2mwocQttic6mstHutL/KZMN/MK7wRqi3nh2FOFYa2vkjjW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734347754; c=relaxed/simple;
	bh=9DhlLE6Za1BywG0jFVyJkXZJLG1vxw+QEutyErPxalA=;
	h=To:Subject:From:Message-Id:Date; b=W4w4xEtggXV5kEXTYiNdc08LAvp0t2cBDS49mBelxE80XdNatopGbjxtAVo0/uk3eQXXk2z9Uy2wHwx7wGdIgD0olHn/8buD1Lo446Qi/ENu/u0GocivUV3U3yazIU+bOfock+hhxFFtBGluSZorMaWcC9V2uzKvSeey0texOXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIEdR8uT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIEdR8uT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F643C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734347753;
	bh=9DhlLE6Za1BywG0jFVyJkXZJLG1vxw+QEutyErPxalA=;
	h=To:Subject:From:Date:From;
	b=WIEdR8uT54KRUuJIT7SxyCc5jzw/jta5D+kt6di1EDD+wbT5h/tMo+UQRv1zG2te/
	 enKIlj5+amnk8A90SGarR0VXiXGCmyQnILZ2lpYr++MQW6RhhJV6gvTYEdMYQTKRRK
	 RpDI3Wbbh3l/7dC0/Zvlkzvt9Dqj8zUyFAkbYoT5MkyDNttMN2fvhCbPztLvNsg3GT
	 IiBfyYJseVq6QqVCUpS1RE0WPbEdobo0XBI32LxuLJEcd5mjSUXr2YjvlLYFAc+sFV
	 qteur5v4JsYAs0mF9Kof6WA4WWO/kS8Xj3HmUgW8EwxITuU8ueo58Fafn0iiKrNmdx
	 bnZTnr1qhuGPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904CDE7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173434775358.30623.1631543320213221413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463adff7cef89135c09db87fd16390138124015583ea3ac947ae3a185bf1da31
Date: Mon, 16 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734347753
